CREATE TABLE [dbo].[SP_ErrorLog] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [DBName]        VARCHAR (20)   NULL,
    [SPName]        VARCHAR (100)  NULL,
    [ErrorDate]     DATETIME       CONSTRAINT [DF_SP_ErrorLog_ErrorDate] DEFAULT (getdate()) NULL,
    [ErrorMessage]  VARCHAR (4000) NULL,
    [ErrorNumber]   INT            NULL,
    [ErrorSeverity] INT            NULL,
    [ErrorState]    INT            NULL,
    [ErrorLine]     INT            NULL,
    CONSTRAINT [PK_SP_ErrorLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

