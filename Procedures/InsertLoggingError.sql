CREATE PROCEDURE [ims].[InsertLoggingError] (
	@LogLevel VARCHAR(20)
	,@Message NVARCHAR(MAX)
	,@Exception NVARCHAR(MAX)
	,@InnerException NVARCHAR(MAX)
	,@StackTrace NVARCHAR(MAX)
	,@ApplicationName VARCHAR(100)
	,@UserID VARCHAR(50)
	,@MachineName VARCHAR(50)
	,@Source VARCHAR(100)
  ,@RequestID NVARCHAR(MAX)
	,@AdditionalInfo NVARCHAR(MAX)
	)
AS
BEGIN
	DECLARE @TimeStamp DATETIME2 = (
			SELECT GETDATE()
			);

	INSERT INTO [ims].[LoggingError] (
		[Timestamp]
		,[LogLevel]
		,[Message]
		,[Exception]
		,[InnerException]
		,[StackTrace]
		,[ApplicationName]
		,[UserID]
		,[MachineName]
		,[Source]
    ,[RequestID]
		,[AdditionalInfo]
		)
	VALUES (
		@TimeStamp
		,@LogLevel
		,@Message
		,@Exception
		,@InnerException
		,@StackTrace
		,@ApplicationName
		,@UserID
		,@MachineName
		,@Source
    ,@RequestID
		,@AdditionalInfo
		)
END
