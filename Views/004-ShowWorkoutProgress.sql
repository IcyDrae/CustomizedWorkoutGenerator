USE CustomizedWorkoutGenerator;
GO

-- 4. Show the progress for each workout of each user.
CREATE VIEW [dbo].[ShowWorkoutProgress] AS
SELECT
	[User].[Id] AS [User ID],
	[WorkoutPlan].[Id] AS [Workout plan ID],
	[WorkoutPlan].[Name] AS [Workout plan name],
	[UserWorkoutPlans].[CreatedOn] AS [Workout plan creation date],
	[Progress].[LengthSessions] AS [Workout plan sessions amount],
	[Progress].[CompletedSessions] AS [Completed sessions],
	[Progress].[StartWeight] AS [Starting weight],
	[Progress].[CurrentWeight] AS [Current weight],
	[Progress].[UpdatedOn] AS [Progress updated on],
	CASE
		WHEN [Progress].[FeelingBetter] = 0 THEN 'No'
		WHEN [Progress].[FeelingBetter] = 1 THEN 'Yes'
	END AS [Feeling better]
FROM [dbo].[User] AS [User]
LEFT JOIN [dbo].[UserWorkoutPlans] AS [UserWorkoutPlans]
ON [UserWorkoutPlans].[UserId] = [User].[Id]
LEFT JOIN [dbo].[WorkoutPlan] AS [WorkoutPlan]
ON [WorkoutPlan].[Id] = [UserWorkoutPlans].[WorkoutPlanId]
LEFT JOIN [dbo].[Progress] AS [Progress]
ON [Progress].[WorkoutPlanId] = [WorkoutPlan].[Id];










