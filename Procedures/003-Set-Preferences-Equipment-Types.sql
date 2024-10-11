USE CustomizedWorkoutGenerator;
GO

CREATE PROCEDURE [dbo].[SetPreferencesEquipmentTypes]
@Email NVARCHAR(50),
@EquipmentType NVARCHAR(50),
@Message NVARCHAR(500) OUTPUT
AS
BEGIN
	BEGIN TRY
	DECLARE @UserId INTEGER;
	DECLARE @PreferencesId INTEGER;
	DECLARE @EquipmentTypeId INTEGER;

	SET @UserId = (SELECT [Id] FROM [dbo].[User] WHERE [User].[EmailAddress] = @Email);
	SET @PreferencesId = (SELECT [Id] FROM [dbo].[Preferences] WHERE [Preferences].[UserId] = @UserId);
	SET @EquipmentTypeId = (SELECT [Id] FROM [dbo].[EquipmentType] WHERE [EquipmentType].[Name] = @EquipmentType);

	INSERT INTO [dbo].[PreferencesEquipmentTypes]
		([PreferencesId], [EquipmentTypeId])
	VALUES
		(@PreferencesId, @EquipmentTypeId);

	IF @@ROWCOUNT = 1
		SET @Message = 'You chose your available equipment.';
	END TRY
	BEGIN CATCH
	SET @Message = 'Error ' +
					CONVERT(VARCHAR, ERROR_NUMBER(), 1) + ': '+
					ERROR_MESSAGE();
	END CATCH
END
