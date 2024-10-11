USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[CreateUser]
@FirstName NVARCHAR(50),
@LastName NVARCHAR(50),
@EmailAddress NVARCHAR(100),
@Birthdate DATE,
@Age TINYINT,
@Weight TINYINT,
@Height TINYINT,
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY
	-- Birthdate & age validation
	DECLARE @AgeBasedOnBirthdate INTEGER;
	SET @AgeBasedOnBirthdate = FLOOR(DATEDIFF(DAY, @Birthdate, GETDATE()) / 365.25);

	IF @AgeBasedOnBirthdate != @Age
		THROW 50001, 'The users birthdate and age do not correspond with each other.', 1;

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
		(@FirstName,
		@LastName,
		@EmailAddress,
		@Birthdate,
		@Age,
		@Weight,
		@Height,
		GETDATE());

	IF @@ROWCOUNT = 1
		SET @Message = 'The user was created.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
