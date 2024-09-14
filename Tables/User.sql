CREATE TABLE [usr].[User]
(
  [Username] NVARCHAR(128),
  [PasswordHash] NVARCHAR(MAX) NOT NULL,
  [CreatedAt] DATETIME2 DEFAULT(GETDATE()),
  [StatusId] INT NOT NULL,
  [LoginSuccessfully] DATETIME2,
  [MobileNumber] VARCHAR(32),
  [Email] VARCHAR(128),
  [RoleId] INT,
  CONSTRAINT PK_User PRIMARY KEY (Username),
  CONSTRAINT FK_User_UserRole FOREIGN KEY (RoleId) REFERENCES [usr].[Roles](RoleId),
  CONSTRAINT FK_User_UserStatus FOREIGN KEY (StatusId) REFERENCES [usr].[UserStatus](StatusId)
)