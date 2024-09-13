CREATE TABLE [ims].[LoggingError]
(
    LogID INT IDENTITY(1,1) PRIMARY KEY,  -- Unique identifier for each log entry
    Timestamp DATETIME2 NOT NULL,         -- Timestamp when the log entry was created
    LogLevel VARCHAR(20) NOT NULL,        -- Log level (e.g., Error, Warning, Info, Debug)
    Message NVARCHAR(MAX) NOT NULL,       -- The log message
    Exception NVARCHAR(MAX) NULL,         -- Exception details, if applicable
    InnerException NVARCHAR(MAX) NULL,    -- Inner exception details, if applicable
    StackTrace NVARCHAR(MAX) NULL,        -- Stack trace of the error, if available
    ApplicationName VARCHAR(100) NULL,    -- Name of the application or module logging the entry
    UserID VARCHAR(50) NULL,              -- User identifier, if available (e.g., username, user ID)
    MachineName VARCHAR(50) NULL,         -- Name of the machine/server where the log was generated
    Source VARCHAR(100) NULL,             -- Source of the log (e.g., method, component)
    RequestID UNIQUEIDENTIFIER NULL,      -- Correlation ID to trace specific requests
    AdditionalInfo NVARCHAR(MAX) NULL     -- Any additional information, serialized as JSON or key-value pairs
)

  