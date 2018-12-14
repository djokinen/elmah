
CREATE PROCEDURE [dbo].[Insert_SP_ErrorLog]
(
 @DBName varchar(20),
 @ErrorMessage varchar(4000),
 @SPName varchar(100),
 @ErrorNumber int,
 @ErrorSeverity int,
 @ErrorState int,
 @ErrorLine int
)

AS
INSERT INTO SP_ErrorLog
(
DBName,
ErrorMessage,
SPName,
ErrorNumber,
ErrorSeverity,
ErrorState,
ErrorLine
)
VALUES
(
@DBName,
@ErrorMessage,
@SPName,
@ErrorNumber,
@ErrorSeverity,
@ErrorState,
@ErrorLine
)

