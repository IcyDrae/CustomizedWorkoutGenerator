USE CustomizedWorkoutGenerator;
GO

-- 1. For each user, show their goals and preferences
CREATE VIEW [dbo].[ShowUserGoalsAndPreferences] AS
SELECT
	CONCAT([User].[FirstName], ' ', [User].[LastName]) AS [Full name],
	[User].[Age],
	CONCAT([User].[Weight], ' Kilograms') AS [Weight],
	CONCAT([User].[Height], ' Centimeters') AS [Height],
	[Goal].[Name] AS [Goal name],
	[UserGoals].[CreatedOn] AS [Goal set on date],
	[UserGoals].[TargetDate] AS [Goal target date],
	[EquipmentType].[Name] AS [Available equipment]
FROM [dbo].[User] [User]
LEFT JOIN [dbo].[UserGoals] [UserGoals]
ON [UserGoals].[UserId] = [User].[Id]
LEFT JOIN [dbo].[Goal] [Goal]
ON [Goal].[Id] = [UserGoals].[Id]
LEFT JOIN [dbo].[Preferences] [Preferences]
ON [Preferences].[Id] = [User].[PreferencesId]
LEFT JOIN [dbo].[PreferencesEquipmentTypes] [PreferencesEquipmentTypes]
ON [PreferencesEquipmentTypes].[PreferencesId] = [Preferences].[Id]
LEFT JOIN [dbo].[EquipmentType] [EquipmentType]
ON [EquipmentType].[Id] = [PreferencesEquipmentTypes].[EquipmentTypeId];
