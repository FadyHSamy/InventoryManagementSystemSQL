DELETE FROM [usr].[Roles];
GO;
INSERT INTO [usr].[Roles] 
    ([RoleId] ,[RoleName] )
VALUES
    (1, 'User'),
    (2, 'Manager'),
    (3, 'Admin')
GO;