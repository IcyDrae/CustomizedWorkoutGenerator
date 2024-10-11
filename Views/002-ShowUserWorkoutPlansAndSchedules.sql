USE CustomizedWorkoutGenerator;
GO

-- 2. For each user show their workout plan/s and schedules.
CREATE VIEW [dbo].[ShowUserWorkoutPlansAndSchedules] AS
SELECT
	CONCAT([User].[FirstName], ' ', [User].[LastName]) AS [Full name],
	[WorkoutPlan].[Name] AS [Workout plan name],
	[Schedule].[Name] AS [Schedule name],
	[Schedule].[LengthWeeks] AS [Schedule length in weeks],
	[Schedule].[LengthDays] AS [Schedule length in days],
	[Schedule].[LengthSessions] AS [Schedule sessions amount],
	[Schedule].[TrainingDays] AS [Training days],
	[Schedule].[RestDays] AS [Rest days]
FROM [dbo].[User] [User]
LEFT JOIN [dbo].[UserWorkoutPlans] [UserWorkoutPlans]
ON [UserWorkoutPlans].[UserId] = [User].[Id]
LEFT JOIN [dbo].[WorkoutPlan] [WorkoutPlan]
ON [WorkoutPlan].[Id] = [UserWorkoutPlans].[WorkoutPlanId]
LEFT JOIN [dbo].[Schedule] [Schedule]
ON [Schedule].[Id] = [WorkoutPlan].[ScheduleId];


