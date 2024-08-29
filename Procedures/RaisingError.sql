CREATE PROCEDURE [ims].[RaisingError](
    @ErrorMessage NVARCHAR(4000),
    @ErrorSeverity INT = 16, -- Default severity level
    @ErrorState INT = 1,      -- Default state
    @ErrorNumber INT = NULL,  -- Optional: Custom error number
    @ThrowException BIT = 1   -- Default to THROW; use 0 for RAISERROR
)
AS
BEGIN
    -- Validate inputs
    IF @ErrorMessage IS NULL OR LEN(@ErrorMessage) = 0
    BEGIN
        SET @ErrorMessage = 'An unspecified error occurred.';
    END
    
    -- Use THROW for modern error handling
    IF @ThrowException = 1
    BEGIN
        -- If ErrorNumber is provided, format the message
        IF @ErrorNumber IS NOT NULL
        BEGIN;
            THROW @ErrorNumber, @ErrorMessage, @ErrorState;
        END
        ELSE
        BEGIN;
            THROW 50000, @ErrorMessage, @ErrorState;
        END
    END
    -- Use RAISERROR for legacy error handling
    ELSE
    BEGIN
        IF @ErrorNumber IS NOT NULL
        BEGIN
            RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState) WITH NOWAIT;
        END
        ELSE
        BEGIN
            RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState) WITH NOWAIT;
        END
    END
END;