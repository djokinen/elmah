EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'CMS';


GO
EXECUTE sp_addrolemember @rolename = N'db_datawriter', @membername = N'CMS';

