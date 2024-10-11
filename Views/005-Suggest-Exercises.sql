USE CustomizedWorkoutGenerator;
GO

-- 5. Show exercise suggestions based on preferences.
CREATE VIEW [dbo].[SuggestExercises] AS
SELECT
	[User].[Id] AS [User ID],
	CASE
		WHEN [Preferences].[EquipmentAvailable] = 0 THEN 'No'
		WHEN [Preferences].[EquipmentAvailable] = 1 THEN 'Yes'
	END AS [Equipment availability],
	CASE
		WHEN [Preferences].[EquipmentAvailable] = 1 THEN [EquipmentType].[Name]
	END AS [Available equipment name],
	[Exercise].[Name] AS [Suggested exercise],
	[WorkoutType].[Name] AS [Exercise type]
FROM [dbo].[User] AS [User]
LEFT JOIN [dbo].[Preferences] AS [Preferences]
ON [Preferences].[Id] = [User].[PreferencesId]
LEFT JOIN [dbo].[PreferencesEquipmentTypes] AS [PreferencesEquipmentTypes]
ON [PreferencesEquipmentTypes].[PreferencesId] = [Preferences].[Id]
LEFT JOIN [Exercise] AS [Exercise]
ON [Exercise].[EquipmentTypeId] = [PreferencesEquipmentTypes].[EquipmentTypeId]
LEFT JOIN [UserGoals] AS [UserGoals]
ON [UserGoals].[UserId] = [User].[Id]
LEFT JOIN [dbo].[Goal] AS [Goal]
ON [Goal].[Id] = [UserGoals].[GoalId]
INNER JOIN [dbo].[WorkoutType] AS [WorkoutType]
ON
	[WorkoutType].[Id] = [Exercise].[WorkoutTypeId] AND
	[WorkoutType].[Id] = [Goal].[WorkoutTypeId]
LEFT JOIN [dbo].[EquipmentType] AS [EquipmentType]
ON [EquipmentType].[Id] = [PreferencesEquipmentTypes].[EquipmentTypeId];
