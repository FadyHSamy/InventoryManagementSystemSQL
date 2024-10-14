CREATE PROCEDURE [usr].[GetUserHashPassword] (
	@username NVARCHAR(128)
	,@passwordHash NVARCHAR(MAX) OUTPUT
	)
AS
BEGIN
	BEGIN TRY
		SELECT @passwordHash = users.PasswordHash
		FROM usr.[User] AS users
		WHERE users.Username = @Username;
	END TRY

	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(MAX);
		DECLARE @ErrorNumber INT;

		SELECT @ErrorMessage = ERROR_MESSAGE()
			,@ErrorNumber = ERROR_NUMBER();

		EXECUTE [ims].[RaisingError] @ErrorMessage = @ErrorMessage
			,@ErrorNumber = @ErrorNumber
	END CATCH
END
