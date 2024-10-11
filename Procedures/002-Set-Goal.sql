USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[SetGoal]
@Email NVARCHAR(50),
@GoalName NVARCHAR(50),
@TargetDate DATE,
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY
	DECLARE @UserId INTEGER;
	DECLARE @GoalId INTEGER;

	SET @UserId = (SELECT [Id] FROM [dbo].[User] WHERE [User].[EmailAddress] = @Email);
	SET @GoalId = (SELECT [Id] FROM [dbo].[Goal] WHERE [Goal].[Name] = @GoalName);

	-- Validation
	IF DATEDIFF(MONTH, GETDATE(), @TargetDate) < 1
		THROW 50001, 'Please set a goal that is at least one month from now.', 1

	IF EXISTS (SELECT [Id] FROM [dbo].[UserGoals] WHERE [GoalId] = @GoalId)
		THROW 50001, 'You have already set that goal, please select another one.', 1

	INSERT INTO [dbo].[UserGoals]
		([UserId],
		[GoalId],
		[CreatedOn],
		[TargetDate])
	VALUES
		(@UserId,
		@GoalId,
		GETDATE(),
		@TargetDate);

	IF @@ROWCOUNT = 1
		SET @Message = 'Your goal was created.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
