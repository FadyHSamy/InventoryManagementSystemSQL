DELETE FROM [ims].[DatabaseMessages];
GO;
INSERT INTO [ims].[DatabaseMessages]
  (MessageId,MessageName)
VALUES
  (50001,'Username Already Exist'), 
  (50002,'User Not Exist'), 
  (50003,'Username cannot be null')
GO;