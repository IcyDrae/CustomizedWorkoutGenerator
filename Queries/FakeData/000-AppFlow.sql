USE CustomizedWorkoutGenerator;
GO

-- Step 1: Create a user
/*
DECLARE @CreateUserOutput AS NVARCHAR(500);

EXECUTE [dbo].[CreateUser]
@FirstName = 'Joe',
@LastName = 'Dohn - Fake Data',
@EmailAddress = 'joe-dohn@outlook.com',
@Birthdate = '06-15-1999',
@Age = 25,
@Weight = 80,
@Height = 180,
@Message = @CreateUserOutput OUTPUT;

SELECT @CreateUserOutput AS [Output];
SELECT * FROM [dbo].[User];
GO
*/

-- Step 2: The user sets a goal or multiple ones
/*
DECLARE @SetGoalOutput AS NVARCHAR(500);

EXECUTE [dbo].[SetGoal]
@Email = 'joe-dohn@outlook.com',
@GoalName = 'Build Muscle Mass',
@TargetDate = '12-01-2024',
@Message = @SetGoalOutput OUTPUT;

SELECT @SetGoalOutput AS [Output];
SELECT * FROM [dbo].[UserGoals];
GO
*/

-- Step 3: The user sets their preferences.
/*
DECLARE @SetPreferencesOutput AS NVARCHAR(500);

EXECUTE [dbo].[SetPreferences]
@Email = 'joe-dohn@outlook.com',
@EquipmentAvailable = 1,
@Message = @SetPreferencesOutput OUTPUT;

SELECT @SetPreferencesOutput AS [Output];
SELECT * FROM [dbo].[Preferences];
GO
*/

-- Step 4: The user chooses their equipment types.
/*
DECLARE @SetPreferencesEquipmentTypesOutput AS NVARCHAR(500);

EXECUTE [dbo].[SetPreferencesEquipmentTypes]
@Email = 'joe-dohn@outlook.com',
@EquipmentType = 'Yoga mat',
@Message = @SetPreferencesEquipmentTypesOutput OUTPUT;

SELECT @SetPreferencesEquipmentTypesOutput AS [Output];
SELECT * FROM [dbo].[PreferencesEquipmentTypes];
GO
*/

-- Step 5: Generate workout plan
/*
DECLARE @SetWorkoutPlanOutput AS NVARCHAR(500);

EXECUTE [dbo].[CreateWorkoutPlan]
@Email = 'joe-dohn@outlook.com',
@Message = @SetWorkoutPlanOutput OUTPUT;

SELECT @SetWorkoutPlanOutput AS [Output];
SELECT * FROM [dbo].[WorkoutPlan];
GO
*/

-- Step 6: Track progress
/*
DECLARE @SetProgressOutput AS NVARCHAR(500);

EXECUTE [dbo].[TrackProgress]
@WorkoutDone = 1,
@UserId = 1,
@WorkoutPlanId = 5,
@CurrentWeight = 80,
@FeelingBetter = 1,
@Message = @SetProgressOutput OUTPUT;

SELECT @SetProgressOutput AS [Output];
SELECT * FROM [dbo].[Progress];
GO
*/

