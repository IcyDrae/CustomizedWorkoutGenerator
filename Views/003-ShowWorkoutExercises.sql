USE CustomizedWorkoutGenerator;
GO

-- 3. Show all the exercises of each workout.
CREATE VIEW [dbo].[ShowWorkoutExercises] AS
SELECT
	[WorkoutPlan].[Id] AS [Workout plan ID],
	[WorkoutPlan].[Name] AS [Workout plan name],
	[Exercise].[Name] AS [Exercise name],
	[Exercise].[Steps] AS [Exercise steps],
	[EquipmentType].[Name] AS [Equipment type name]
FROM [dbo].[WorkoutPlan] AS [WorkoutPlan]
LEFT JOIN [dbo].[WorkoutPlanExercises] AS [WorkoutPlanExercises]
ON [WorkoutPlanExercises].[WorkoutPlanId] = [WorkoutPlan].[Id]
LEFT JOIN [dbo].[Exercise] AS [Exercise]
ON [Exercise].[Id] = [WorkoutPlanExercises].[ExerciseId]
LEFT JOIN [dbo].[EquipmentType] AS [EquipmentType]
ON [EquipmentType].[Id] = [Exercise].[EquipmentTypeId];
