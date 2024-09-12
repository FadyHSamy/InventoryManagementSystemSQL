CREATE PROCEDURE [usr].[GetUserRoleDescription](
  @RoleId INT,
  @RoleName NVARCHAR(64) OUTPUT
)
AS
BEGIN
  SELECT @RoleName = RoleName
  FROM usr.Roles
  WHERE RoleId = @RoleId;
END
