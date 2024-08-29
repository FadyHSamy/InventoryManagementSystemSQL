CREATE TABLE [usr].[User]
(
  [Username] NVARCHAR(128) NOT NULL PRIMARY KEY,
  [PasswordHash] NVARCHAR(MAX) NOT NULL,
  [CreatedAt] DATETIME2 DEFAULT(GETDATE()),
  [StatusId] INT NOT NULL,
  [LoginSuccessfully] DATETIME2,
  [MobileNumber] VARCHAR(32),
  [Email] VARCHAR(128),
  [RoleId] INT
)
ALTER TABLE [usr].[User]
ADD CONSTRAINT FK_UserRole
FOREIGN KEY (RoleId) REFERENCES [usr].[Roles](RoleId);

ALTER TABLE [usr].[User]
ADD CONSTRAINT FK_UserStatus
FOREIGN KEY (StatusId) REFERENCES [usr].[UserStatus](StatusId);