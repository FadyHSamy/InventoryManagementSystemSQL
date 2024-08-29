CREATE
	OR
ALTER PROCEDURE [usr].[AddingUser] (
	@Username NVARCHAR(128)
	,@PasswordUnHashed NVARCHAR(MAX)
	,@MobileNumber VARCHAR(32)
	,@Email VARCHAR(128)
	)
AS
BEGIN
	BEGIN TRANSACTION

	DECLARE @ErrorMessage NVARCHAR(MAX);
	DECLARE @ErrorNumber INT;

	BEGIN TRY
		BEGIN
			--VALIDATIONS
			IF EXISTS (
					SELECT 1
					FROM [usr].[User]
					WHERE Username = @Username
					)
			BEGIN
				SET @ErrorNumber = 50001

				SELECT @ErrorMessage = MessageName
				FROM [ims].[DatabaseMessages]
				WHERE MessageId = @ErrorNumber

				RAISERROR (
						@ErrorMessage
						,16
						,1
						);
			END
		END

		DECLARE @HashedPassword NVARCHAR(MAX) = (
				SELECT HASHBYTES('SHA2_256', @PasswordUnHashed)
				);

		INSERT INTO [usr].[USER] (
			[Username]
			,[PasswordHash]
			,[StatusId]
			,[MobileNumber]
			,[Email]
			,[RoleId]
			)
		VALUES (
			@Username
			,@HashedPassword
			,1
			,@MobileNumber
			,@Email
			,1
			)

		COMMIT TRANSACTION
	END TRY

	BEGIN CATCH
		SELECT 1;

		ROLLBACK TRANSACTION

		EXECUTE [ims].[RaisingError] @ErrorMessage = @ErrorMessage
			,@ErrorNumber = @ErrorNumber
	END CATCH
END
