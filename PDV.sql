CREATE TABLE [dbo].[user_reg] (
    [Userid]      INT          IDENTITY (1, 1) NOT NULL,
    [Fname]       VARCHAR (50) NULL,
    [Lname]       VARCHAR (50) NULL,
    [Gender]      VARCHAR (50) NULL,
    [Loginid]     VARCHAR (50) NULL,
    [Password]    VARCHAR (50) NULL,
    [Phone]       VARCHAR (50) NULL,
    [Email]       VARCHAR (50) NULL,
    [Address]     VARCHAR (50) NULL,
    [Date]        VARCHAR (50) NULL,
    [Time]        VARCHAR (50) NULL,
    [Admin_check] INT          NULL,
    [Active]      INT          NULL,
	[Role]      INT          NULL,
    PRIMARY KEY CLUSTERED ([Userid] ASC)
);

CREATE TABLE [dbo].[save_file] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [file_name] VARCHAR (MAX)   NULL,
    [content]   VARBINARY (MAX) NULL,
    [date]      VARCHAR (50)    NULL,
    [uid]       VARCHAR (50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[compose] (
    [Id]           INT             IDENTITY (1, 1) NOT NULL,
    [to_msg]       VARCHAR (50)    NULL,
    [from_msg]     VARCHAR (50)    NULL,
    [subject]      VARCHAR (50)    NULL,
    [body]         VARCHAR (50)    NULL,
    [file_name]    VARCHAR (MAX)   NULL,
    [file_content] VARBINARY (MAX) NULL,
    [date]         VARCHAR (50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[Favourates] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [uid]  VARCHAR (50) NULL,
    [name] VARCHAR (50) NULL,
    [url]  VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[password] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [uid]  VARCHAR (50) NULL,
    [name] VARCHAR (50) NULL,
    [url]  VARCHAR (50) NULL,
    [pass] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);




