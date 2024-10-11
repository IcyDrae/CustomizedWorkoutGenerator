USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[CreateWorkoutPlan]
@Email NVARCHAR(50),
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY
	DECLARE @UserId INTEGER;
	DECLARE @WorkoutPlanName NVARCHAR(100);
	DECLARE @WorkoutDescription NVARCHAR(500);
	DECLARE @UserName NVARCHAR(100);
	DECLARE @GoalId INTEGER;
	DECLARE @GoalName NVARCHAR(100);

	SET @UserId = (SELECT [Id] FROM [dbo].[User] WHERE [User].[EmailAddress] = @Email);
	SET @UserName = (SELECT [FirstName] FROM [dbo].[User] WHERE [User].[Id] = @UserId);
	SET @GoalId = (SELECT [Id] FROM [dbo].[UserGoals] WHERE [UserGoals].[UserId] = @UserId);
	SET @GoalName = (SELECT [Name] FROM [dbo].[Goal] WHERE [Goal].[Id] = @GoalId);
	SET @WorkoutPlanName =
		(SELECT CONCAT(@UserName, '''s workout plan to ', LOWER(@GoalName)));
	SET @WorkoutDescription =
		CONCAT('This workout plan is designed to help you ', LOWER(@GoalName), '.');

	-- Get the first schedule if there are multiple ones
	DECLARE @TargetDate DATE;
	DECLARE @WorkoutPlanLength INTEGER;
	DECLARE @WorkoutTypeId INTEGER;
	DECLARE @ScheduleId INTEGER;

	SET @TargetDate =
		(SELECT [TargetDate] FROM [dbo].[UserGoals] WHERE [UserGoals].[UserId] = @UserId);
	SET @GoalId =
		(SELECT [GoalId] FROM [dbo].[UserGoals] WHERE [UserGoals].[UserId] = @UserId);
	SET @WorkoutPlanLength = (SELECT DATEDIFF(DAY, GETDATE(), @TargetDate));
	SET @WorkoutTypeId =
		(SELECT [WorkoutTypeId] FROM [dbo].[Goal] WHERE [Goal].[Id] = @GoalId);

	SET @ScheduleId =
		(SELECT TOP 1 [Id] FROM [dbo].[Schedule]
		WHERE [LengthWeeks] <= @WorkoutPlanLength
		AND [Schedule].[WorkoutTypeId] = @WorkoutTypeId);

	-- Create the workout plan
	INSERT INTO [dbo].[WorkoutPlan]
		([Name], [Description], [ScheduleId])
	VALUES
		(@WorkoutPlanName, @WorkoutDescription, @ScheduleId);

	-- Insert into UserWorkoutPlans
	DECLARE @WorkoutPlanId INTEGER;
	SET @WorkoutPlanId = (SELECT IDENT_CURRENT('WorkoutPlan'));

	INSERT INTO [dbo].[UserWorkoutPlans]
		([WorkoutPlanId],
		[UserId],
		[CreatedOn])
	VALUES
		(@WorkoutPlanId,
		@UserId,
		GETDATE());
	
	-- Insert into WorkoutPlanExercises.
	-- Include exercises with No Equipment by default, always.
	DECLARE @UserPreferencesId INTEGER;
	DECLARE @EquipmentTypeId INTEGER;

	SET @UserPreferencesId =
		(SELECT [PreferencesId] FROM [dbo].[User] WHERE [User].[Id] = @UserId);
	SET @EquipmentTypeId =
		(SELECT [EquipmentTypeId] FROM [dbo].[PreferencesEquipmentTypes]
		WHERE [PreferencesId] = @UserPreferencesId);

	INSERT INTO [dbo].[WorkoutPlanExercises]
	([WorkoutPlanId], [ExerciseId])
	(SELECT
		[WorkoutPlan].[Id] AS [WorkoutPlanId],
		[Exercise].[Id] AS [ExerciseId]
	FROM [dbo].[WorkoutPlan] [WorkoutPlan]
	INNER JOIN [dbo].[Exercise] [Exercise]
	ON [Exercise].[WorkoutTypeId] = @WorkoutTypeId
	WHERE
		[WorkoutPlan].[Id] = @WorkoutPlanId
		AND (
			[Exercise].[EquipmentTypeId] = @EquipmentTypeId OR
			[Exercise].[EquipmentTypeId] = 1
		)
	);

	IF @@ROWCOUNT >= 1
		SET @Message = 'Your custom workout plan has been created.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
