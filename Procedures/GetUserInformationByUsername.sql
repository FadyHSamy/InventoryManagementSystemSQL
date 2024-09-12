CREATE PROCEDURE [usr].[GetUserInformationByUsername] (
  @Username NVARCHAR(128)
  )
AS
BEGIN
	BEGIN TRY
		DECLARE @ErrorMessage NVARCHAR(MAX);
		DECLARE @ErrorNumber INT;
		
		SELECT users.Username
			,users.CreatedAt
			,users.StatusId
			,users.LoginSuccessfully
			,users.MobileNumber
			,users.Email
			,users.RoleId
		FROM usr.[User] AS users
		WHERE users.Username = @Username;
	END TRY

	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
			,@ErrorNumber = ERROR_NUMBER();

		EXECUTE [ims].[RaisingError] @ErrorMessage = @ErrorMessage
			,@ErrorNumber = @ErrorNumber
	END CATCH
END
