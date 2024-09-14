DELETE FROM [usr].[UserStatus];
GO;
INSERT INTO [usr].[UserStatus]
    ([StatusId],[StatusDescripton])
VALUES
    ( 1 , 'Active'),
    ( 2 , 'Inactive'),
    ( 3 , 'Suspended'),
    ( 4 , 'Deleted')
GO;