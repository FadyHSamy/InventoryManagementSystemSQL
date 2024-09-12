CREATE PROCEDURE [usr].[GetUserStatusDescription](
  @UserStatusId INT,
  @UserStatusDescription VARCHAR(128) OUTPUT
)
AS
BEGIN
  SELECT @userStatusDescription = [StatusDescripton]
  FROM usr.UserStatus
  WHERE [StatusId] = @UserStatusId
END