USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[TrackProgress]
@WorkoutDone BIT,
@UserId INTEGER,
@WorkoutPlanId INTEGER,
@CurrentWeight TINYINT,
@FeelingBetter BIT,
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY
	DECLARE @StartWeight INTEGER;
	DECLARE @ScheduleId INTEGER;
	DECLARE @LengthSessions INTEGER;
	SET @StartWeight =
		(SELECT [Weight] FROM [dbo].[User] WHERE [Id] = @UserId);
	SET @ScheduleId =
		(SELECT [ScheduleId] FROM [dbo].[WorkoutPlan] WHERE [Id] = @WorkoutPlanId);
	SET @LengthSessions =
		(SELECT [LengthSessions] FROM [dbo].[Schedule] WHERE [Id] = @ScheduleId);

	-- Update the progress each time the user does a workout for this workout plan
	IF EXISTS (
		SELECT *
		FROM [dbo].[Progress]
		WHERE
		[UserId] = @UserId AND
		[WorkoutPlanId] = @WorkoutPlanId
	)
	BEGIN
	DECLARE @ProgressId INTEGER;
	DECLARE @CompletedSessionsCurrent INTEGER;
	DECLARE @IsPlanFinished BIT;

	SET @CompletedSessionsCurrent =
		(SELECT TOP 1 [CompletedSessions]
		FROM [dbo].[Progress]
		WHERE
		[UserId] = @UserId AND
		[WorkoutPlanId] = @WorkoutPlanId
		ORDER BY [Id] DESC);
	
	IF @CompletedSessionsCurrent = @LengthSessions
	BEGIN
		SET @IsPlanFinished = 1;
		SET @Message = 'You have done all sessions for this workout plan and completed it!';
	END
	ELSE
	BEGIN
		SET @IsPlanFinished = 0;
		--PRINT 'The amount of workouts you have done is: ' + CAST(@CompletedSessions AS NVARCHAR(2)) + ' out of 12.'
		INSERT INTO [dbo].[Progress]
			([UserId],
			[WorkoutPlanId],
			[LengthSessions],
			[CompletedSessions],
			[StartWeight],
			[CurrentWeight],
			[UpdatedOn],
			[FeelingBetter])
		VALUES
			(@UserId,
			@WorkoutPlanId,
			@LengthSessions,
			@CompletedSessionsCurrent + 1,
			@StartWeight,
			@CurrentWeight,
			GETDATE(),
			@FeelingBetter);
		END
	END

	-- Create the initial progress for this user and workout plan
	IF NOT EXISTS (
		SELECT *
		FROM [dbo].[Progress]
		WHERE
		[UserId] = @UserId AND
		[WorkoutPlanId] = @WorkoutPlanId
	)
	BEGIN
	INSERT INTO [dbo].[Progress]
		([UserId],
		[WorkoutPlanId],
		[LengthSessions],
		[CompletedSessions],
		[StartWeight],
		[CurrentWeight],
		[UpdatedOn],
		[FeelingBetter])
	VALUES
		(@UserId,
		@WorkoutPlanId,
		@LengthSessions,
		1,
		@StartWeight,
		@CurrentWeight,
		GETDATE(),
		@FeelingBetter);
	END

	IF @@ROWCOUNT >= 1
		SET @Message = 'Your progress has been updated.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
