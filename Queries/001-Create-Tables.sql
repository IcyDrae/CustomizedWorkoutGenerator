USE CustomizedWorkoutGenerator;
GO

-- Create database tables

-- WorkoutType table
CREATE TABLE [dbo].[WorkoutType] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL
);

-- User table
CREATE TABLE [dbo].[User] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[EmailAddress] NVARCHAR(100) UNIQUE NOT NULL,
	[Birthdate] DATE NOT NULL,
	[Age] TINYINT NOT NULL,
	[Weight] TINYINT NOT NULL,
	[Height] TINYINT NOT NULL,
	[JoinedOn] DATETIME NOT NULL,
	[LastProfileUpdate] DATETIME NULL,
	[PreferencesId] INTEGER NULL -- Foreign Key
);

-- Goal table
CREATE TABLE [dbo].[Goal] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(500) NOT NULL,
	[WorkoutTypeId] INTEGER NOT NULL -- Foreign Key
);

-- UserGoals table
CREATE TABLE [dbo].[UserGoals] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[UserId] INTEGER NOT NULL, -- Foreign Key
	[GoalId] INTEGER NOT NULL, -- Foreign Key
	[CreatedOn] DATETIME NOT NULL,
	[TargetDate] DATE NOT NULL
);

-- EquipmentType table
CREATE TABLE [dbo].[EquipmentType] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL
);

-- Preferences table
CREATE TABLE [dbo].[Preferences] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[UserId] INTEGER NOT NULL, -- Foreign Key
	[EquipmentAvailable] BIT NOT NULL,
);

-- PreferencesEquipmentTypes table
CREATE TABLE [dbo].[PreferencesEquipmentTypes] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[PreferencesId] INTEGER NOT NULL, -- Foreign Key
	[EquipmentTypeId] INTEGER NOT NULL -- Foreign Key
);

-- WorkoutPlan table
CREATE TABLE [dbo].[WorkoutPlan] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(500) NOT NULL,
	[ScheduleId] INTEGER NOT NULL -- Foreign Key
);

-- UserWorkoutPlans table
CREATE TABLE [dbo].[UserWorkoutPlans] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[WorkoutPlanId] INTEGER NOT NULL, -- Foreign Key
	[UserId] INTEGER NOT NULL, -- Foreign Key
	[CreatedOn] DATETIME NOT NULL
);

-- Exercise table
CREATE TABLE [dbo].[Exercise] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(500) NOT NULL,
	[Steps] NVARCHAR(500) NOT NULL,
	[WorkoutTypeId] INTEGER NOT NULL, -- Foreign Key
	[EquipmentTypeId] INTEGER NOT NULL -- Foreign Key
);

-- WorkoutPlanExercises table
CREATE TABLE [dbo].[WorkoutPlanExercises] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[WorkoutPlanId] INTEGER NOT NULL, -- Foreign Key
	[ExerciseId] INTEGER NOT NULL -- Foreign Key
);

-- Schedule table
CREATE TABLE [dbo].[Schedule] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] NVARCHAR(500),
	[LengthDays] INTEGER NOT NULL,
	[LengthWeeks] INTEGER NOT NULL,
	[LengthSessions] INTEGER NOT NULL,
	[TrainingDays] NVARCHAR(500) NOT NULL,
	[RestDays] NVARCHAR(100) NOT NULL,
	[WorkoutTypeId] INTEGER NOT NULL -- Foreign Key
);

-- Progress table
CREATE TABLE [dbo].[Progress] (
	[Id] INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[UserId] INTEGER NOT NULL, -- Foreign Key
	[WorkoutPlanId] INTEGER NOT NULL, -- Foreign Key
	[LengthSessions] INTEGER NOT NULL,
	[CompletedSessions] INTEGER NOT NULL,
	[StartWeight] INTEGER NOT NULL,
	[CurrentWeight] INTEGER NOT NULL,
	[UpdatedOn] DATETIME NOT NULL,
	[FeelingBetter] BIT NOT NULL
);
