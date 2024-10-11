USE CustomizedWorkoutGenerator;
GO

-- User table
ALTER TABLE [dbo].[User]
ADD CONSTRAINT FK_User_PreferencesId FOREIGN KEY ([PreferencesId])
REFERENCES [dbo].[Preferences] (Id);

-- Goal table
ALTER TABLE [dbo].[Goal]
ADD CONSTRAINT FK_Goal_WorkoutTypeId FOREIGN KEY ([WorkoutTypeId])
REFERENCES [dbo].[WorkoutType] (Id);

-- UserGoals table
ALTER TABLE [dbo].[UserGoals]
ADD CONSTRAINT FK_UserGoals_UserId FOREIGN KEY ([UserId])
REFERENCES [dbo].[User] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE [dbo].[UserGoals]
ADD CONSTRAINT FK_UserGoals_GoalId FOREIGN KEY ([GoalId])
REFERENCES [dbo].[Goal] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Preferences table
ALTER TABLE [dbo].[Preferences]
ADD CONSTRAINT FK_Preferences_UserId FOREIGN KEY ([UserId])
REFERENCES [dbo].[User] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- PreferencesEquipmentTypes table
ALTER TABLE [dbo].[PreferencesEquipmentTypes]
ADD CONSTRAINT FK_PreferencesEquipmentTypes_PreferencesId
FOREIGN KEY ([PreferencesId])
REFERENCES [dbo].[Preferences] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE [dbo].[PreferencesEquipmentTypes]
ADD CONSTRAINT FK_PreferencesEquipmentTypes_EquipmentTypeId
FOREIGN KEY ([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- WorkoutPlan table
ALTER TABLE [dbo].[WorkoutPlan]
ADD CONSTRAINT FK_WorkoutPlan_ScheduleId FOREIGN KEY ([ScheduleId])
REFERENCES [dbo].[Schedule] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- UserWorkoutPlans table
ALTER TABLE [dbo].[UserWorkoutPlans]
ADD CONSTRAINT FK_UserWorkoutPlans_WorkoutPlanId FOREIGN KEY ([WorkoutPlanId])
REFERENCES [dbo].[WorkoutPlan] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE [dbo].[UserWorkoutPlans]
ADD CONSTRAINT FK_UserWorkoutPlans_UserId FOREIGN KEY ([UserId])
REFERENCES [dbo].[User] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- WorkoutPlanExercises table
ALTER TABLE [dbo].[WorkoutPlanExercises]
ADD CONSTRAINT FK_WorkoutPlanExercises_WorkoutPlanId FOREIGN KEY ([WorkoutPlanId])
REFERENCES [dbo].[WorkoutPlan] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE [dbo].[WorkoutPlanExercises]
ADD CONSTRAINT FK_WorkoutPlanExercises_ExerciseId FOREIGN KEY ([ExerciseId])
REFERENCES [dbo].[Exercise] (Id);

-- Progress table
ALTER TABLE [dbo].[Progress]
ADD CONSTRAINT FK_Progress_UserId FOREIGN KEY ([UserId])
REFERENCES [dbo].[User] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE [dbo].[Progress]
ADD CONSTRAINT FK_Progress_WorkoutPlanId FOREIGN KEY ([WorkoutPlanId])
REFERENCES [dbo].[WorkoutPlan] (Id);

-- Exercise table
ALTER TABLE [dbo].[Exercise]
ADD CONSTRAINT FK_Exercise_WorkoutTypeId FOREIGN KEY ([WorkoutTypeId])
REFERENCES [dbo].[WorkoutType] (Id);

ALTER TABLE [dbo].[Exercise]
ADD CONSTRAINT FK_Exercise_EquipmentTypeId FOREIGN KEY ([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] (Id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Schedule table
ALTER TABLE [dbo].[Schedule]
ADD CONSTRAINT FK_Schedule_WorkoutTypeId FOREIGN KEY ([WorkoutTypeId])
REFERENCES [dbo].[WorkoutType] (Id);



