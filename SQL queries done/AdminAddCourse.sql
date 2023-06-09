﻿-- Major table data

INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'csen', N'Media Engoneering and Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'dmet', N'Media Engoneering and Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'networks', N'Information Engineering and Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'communications', N'Information Engineering and Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'electronics', N'Information Engineering and Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'bi', N'Management Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'management', N'Management Technology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'pharmacy', N'Pharmacy and Biotechnology')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'ems', N'Engineering and Materials Science')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'mctr', N'Engineering and Materials Science')
INSERT INTO [dbo].[Major] ([name], [faculty]) VALUES (N'graduate', N'Postgraduate Studies')

GO

create Proc AdminAddCourse 
@code varchar(20),
@name varchar(20),
@description varchar(100),
@credit_hours int,
@isElective bit,
@Numlectures int,
@Numtutorials int,
@Numlabs int,
@course_id INT OUTPUT
as
BEGIN

insert into Course values(@code,@name,@description,@credit_hours,@isElective, @Numlectures,@Numtutorials,@Numlabs);
SET @course_id = SCOPE_IDENTITY();

END;

go

create Proc AdminAddCourseMajor
@course_id INT,
@major_name varchar(50)
as

insert into Course_Major values(@course_id, @major_name);















-- Description in course varchar(100)
/*
Deployment script for C:\USERS\RAGAA\SOURCE\REPOS\METWEBSITE\METWEBSITE\APP_DATA\DATABASE1.MDF

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "C:\USERS\RAGAA\SOURCE\REPOS\METWEBSITE\METWEBSITE\APP_DATA\DATABASE1.MDF"
:setvar DefaultFilePrefix "C_\USERS\RAGAA\SOURCE\REPOS\METWEBSITE\METWEBSITE\APP_DATA\DATABASE1.MDF_"
:setvar DefaultDataPath "C:\Users\Ragaa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\Ragaa\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO

IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO
CREATE TABLE #tmpErrors (Error int)
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
GO
BEGIN TRANSACTION
GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Teaching]...';


GO
ALTER TABLE [dbo].[Teaching] DROP CONSTRAINT [FK__Teaching__serial__2057CCD0];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Course_Major]...';


GO
ALTER TABLE [dbo].[Course_Major] DROP CONSTRAINT [FK__Course_Ma__cours__2CBDA3B5];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[CourseWeek]...';


GO
ALTER TABLE [dbo].[CourseWeek] DROP CONSTRAINT [FK__CourseWee__cours__41B8C09B];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Course_Resources]...';


GO
ALTER TABLE [dbo].[Course_Resources] DROP CONSTRAINT [FK__Course_Re__cours__6754599E];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Course_Updates]...';


GO
ALTER TABLE [dbo].[Course_Updates] DROP CONSTRAINT [FK__Course_Up__cours__6A30C649];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Prerequiste]...';


GO
ALTER TABLE [dbo].[Prerequiste] DROP CONSTRAINT [FK__Prerequis__cours__778AC167];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Dropping Foreign Key unnamed constraint on [dbo].[Prerequiste]...';


GO
ALTER TABLE [dbo].[Prerequiste] DROP CONSTRAINT [FK__Prerequis__cours__787EE5A0];


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Starting rebuilding table [dbo].[Course]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_Course] (
    [serial]       INT            IDENTITY (1, 1) NOT NULL,
    [code]         VARCHAR (20)   NULL,
    [name]         VARCHAR (100)  NULL,
    [description]  VARCHAR (1000) NULL,
    [credit_hours] INT            NULL,
    [isElective]   BIT            NULL,
    [Numlectures]  INT            NULL,
    [Numtutorials] INT            NULL,
    [Numlabs]      INT            NULL,
    PRIMARY KEY CLUSTERED ([serial] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[Course])
    BEGIN
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_Course] ON;
        INSERT INTO [dbo].[tmp_ms_xx_Course] ([serial], [code], [name], [description], [credit_hours], [isElective], [Numlectures], [Numtutorials], [Numlabs])
        SELECT   [serial],
                 [code],
                 [name],
                 [description],
                 [credit_hours],
                 [isElective],
                 [Numlectures],
                 [Numtutorials],
                 [Numlabs]
        FROM     [dbo].[Course]
        ORDER BY [serial] ASC;
        SET IDENTITY_INSERT [dbo].[tmp_ms_xx_Course] OFF;
    END

DROP TABLE [dbo].[Course];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_Course]', N'Course';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Teaching]...';


GO
ALTER TABLE [dbo].[Teaching] WITH NOCHECK
    ADD FOREIGN KEY ([serial]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Course_Major]...';


GO
ALTER TABLE [dbo].[Course_Major] WITH NOCHECK
    ADD FOREIGN KEY ([course_id]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[CourseWeek]...';


GO
ALTER TABLE [dbo].[CourseWeek] WITH NOCHECK
    ADD FOREIGN KEY ([course_serial]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Course_Resources]...';


GO
ALTER TABLE [dbo].[Course_Resources] WITH NOCHECK
    ADD FOREIGN KEY ([course_serial]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Course_Updates]...';


GO
ALTER TABLE [dbo].[Course_Updates] WITH NOCHECK
    ADD FOREIGN KEY ([course_serial]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Prerequiste]...';


GO
ALTER TABLE [dbo].[Prerequiste] WITH NOCHECK
    ADD FOREIGN KEY ([course1]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO
PRINT N'Creating Foreign Key unnamed constraint on [dbo].[Prerequiste]...';


GO
ALTER TABLE [dbo].[Prerequiste] WITH NOCHECK
    ADD FOREIGN KEY ([course2]) REFERENCES [dbo].[Course] ([serial]);


GO
IF @@ERROR <> 0
   AND @@TRANCOUNT > 0
    BEGIN
        ROLLBACK;
    END

IF OBJECT_ID(N'tempdb..#tmpErrors') IS NULL
    CREATE TABLE [#tmpErrors] (
        Error INT
    );

IF @@TRANCOUNT = 0
    BEGIN
        INSERT  INTO #tmpErrors (Error)
        VALUES                 (1);
        BEGIN TRANSACTION;
    END


GO

IF EXISTS (SELECT * FROM #tmpErrors) ROLLBACK TRANSACTION
GO
IF @@TRANCOUNT>0 BEGIN
PRINT N'The transacted portion of the database update succeeded.'
COMMIT TRANSACTION
END
ELSE PRINT N'The transacted portion of the database update failed.'
GO
IF (SELECT OBJECT_ID('tempdb..#tmpErrors')) IS NOT NULL DROP TABLE #tmpErrors
GO
GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
CREATE TABLE [#__checkStatus] (
    id           INT            IDENTITY (1, 1) PRIMARY KEY CLUSTERED,
    [Schema]     NVARCHAR (256),
    [Table]      NVARCHAR (256),
    [Constraint] NVARCHAR (256)
);

SET NOCOUNT ON;

DECLARE tableconstraintnames CURSOR LOCAL FORWARD_ONLY
    FOR SELECT SCHEMA_NAME([schema_id]),
               OBJECT_NAME([parent_object_id]),
               [name],
               0
        FROM   [sys].[objects]
        WHERE  [parent_object_id] IN (OBJECT_ID(N'dbo.Teaching'), OBJECT_ID(N'dbo.Course_Major'), OBJECT_ID(N'dbo.CourseWeek'), OBJECT_ID(N'dbo.Course_Resources'), OBJECT_ID(N'dbo.Course_Updates'), OBJECT_ID(N'dbo.Prerequiste'))
               AND [type] IN (N'F', N'C')
                   AND [object_id] IN (SELECT [object_id]
                                       FROM   [sys].[check_constraints]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0
                                       UNION
                                       SELECT [object_id]
                                       FROM   [sys].[foreign_keys]
                                       WHERE  [is_not_trusted] <> 0
                                              AND [is_disabled] = 0);

DECLARE @schemaname AS NVARCHAR (256);

DECLARE @tablename AS NVARCHAR (256);

DECLARE @checkname AS NVARCHAR (256);

DECLARE @is_not_trusted AS INT;

DECLARE @statement AS NVARCHAR (1024);

BEGIN TRY
    OPEN tableconstraintnames;
    FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
    WHILE @@fetch_status = 0
        BEGIN
            PRINT N'Checking constraint: ' + @checkname + N' [' + @schemaname + N'].[' + @tablename + N']';
            SET @statement = N'ALTER TABLE [' + @schemaname + N'].[' + @tablename + N'] WITH ' + CASE @is_not_trusted WHEN 0 THEN N'CHECK' ELSE N'NOCHECK' END + N' CHECK CONSTRAINT [' + @checkname + N']';
            BEGIN TRY
                EXECUTE [sp_executesql] @statement;
            END TRY
            BEGIN CATCH
                INSERT  [#__checkStatus] ([Schema], [Table], [Constraint])
                VALUES                  (@schemaname, @tablename, @checkname);
            END CATCH
            FETCH tableconstraintnames INTO @schemaname, @tablename, @checkname, @is_not_trusted;
        END
END TRY
BEGIN CATCH
    PRINT ERROR_MESSAGE();
END CATCH

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') >= 0
    CLOSE tableconstraintnames;

IF CURSOR_STATUS(N'LOCAL', N'tableconstraintnames') = -1
    DEALLOCATE tableconstraintnames;

SELECT N'Constraint verification failed:' + [Schema] + N'.' + [Table] + N',' + [Constraint]
FROM   [#__checkStatus];

IF @@ROWCOUNT > 0
    BEGIN
        DROP TABLE [#__checkStatus];
        RAISERROR (N'An error occurred while verifying constraints', 16, 127);
    END

SET NOCOUNT OFF;

DROP TABLE [#__checkStatus];


GO
PRINT N'Update complete.';


GO
