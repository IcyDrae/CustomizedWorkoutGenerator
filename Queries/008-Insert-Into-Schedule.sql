USE CustomizedWorkoutGenerator;
GO

INSERT INTO [dbo].[Schedule]
	([Name],
	[LengthDays],
	[LengthWeeks],
	[LengthSessions],
	[TrainingDays],
	[RestDays],
	[WorkoutTypeId])
VALUES
	('Beginner Strength Program',
	30,
	4,
	12,
	'Monday, Wednesday, Friday',
	'Tuesday, Thursday, Saturday, Sunday',
	1),
	
	('Intermediate Strength & Hypertrophy',
	60,
	6,
	36,
	'Monday, Tuesday, Thursday, Friday',
	'Wednesday, Saturday, Sunday',
	1),
	
	('Fat Loss & Conditioning',
	45,
	5,
	25,
	'Monday, Tuesday, Wednesday, Thursday, Friday',
	'Saturday, Sunday',
	4),
	
	('Bodyweight Training (Full Body)',
	30,
	3,
	9,
	'Tuesday, Thursday',
	'Monday, Wednesday, Friday, Saturday, Sunday',
	1),
	
	('Flexibility & Mobility Program',
	30,
	4,
	12,
	'Monday, Wednesday, Friday',
	'Tuesday, Thursday, Saturday, Sunday',
	3),
	
	('Endurance & Cardiovascular Training',
	60,
	4,
	24,
	'Monday, Wednesday, Friday, Sunday',
	'Tuesday, Thursday, Saturday',
	2),
	
	('Yoga & Flexibility Program',
	30,
	3,
	9,
	'Monday, Wednesday, Friday',
	'Tuesday, Thursday, Saturday, Sunday',
	3);
