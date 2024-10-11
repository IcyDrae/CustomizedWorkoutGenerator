USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[SetPreferences]
@Email NVARCHAR(50),
@EquipmentAvailable BIT,
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY	
	DECLARE @UserId INTEGER;
	SET @UserId = (SELECT [Id] FROM [dbo].[User] WHERE [User].[EmailAddress] = @Email);

	INSERT INTO [dbo].[Preferences]
		([UserId], [EquipmentAvailable])
	VALUES
		(@UserId, @EquipmentAvailable);

	-- Update the user
	DECLARE @PreferencesId INTEGER;
	SET @PreferencesId = (SELECT [Id] FROM [dbo].[Preferences] WHERE [Preferences].[UserId] = @UserId);

	UPDATE [dbo].[User]
	SET
		[User].[PreferencesId] = @PreferencesId,
		[User].[LastProfileUpdate] = GETDATE()
	WHERE [User].[Id] = @UserId;

	IF @@ROWCOUNT = 1
		SET @Message = 'Your preferences were created.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
