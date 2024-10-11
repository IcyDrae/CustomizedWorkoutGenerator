USE CustomizedWorkoutGenerator;
GO

INSERT INTO [dbo].[User]
	([FirstName],
	[LastName],
	[EmailAddress],
	[Birthdate],
	[Age],
	[Weight],
	[Height],
	[JoinedOn])
VALUES
	('Joe',
	'Dohn - Fake Data',
	'joe-dohn@outlook.com',
	'06-15-1999',
	'25',
	'80',
	'180',
	GETDATE());
