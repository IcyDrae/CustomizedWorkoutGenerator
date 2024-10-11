USE CustomizedWorkoutGenerator;
GO

INSERT INTO [dbo].[Goal]
	([Name],
	[Description],
	[WorkoutTypeId])
VALUES
	('Build Muscle Mass',
	'Focus on hypertrophy through strength training, aiming to increase muscle size and definition.',
	1),
	
	('Lose Weight',
	'Engage in a combination of cardio and strength training, alongside a calorie-deficit diet, to reduce body fat.',
	4),
	
	('Increase Flexibility',
	'Emphasize stretching exercises and practices like yoga to improve the range of motion and flexibility.',
	3),
	
	('Boost Overall Fitness',
	'A balanced approach to fitness, including cardio, strength training, flexibility, and mobility, to improve overall health and fitness.',
	5);
