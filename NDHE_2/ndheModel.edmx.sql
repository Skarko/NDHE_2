
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/23/2019 13:04:36
-- Generated from EDMX file: C:\Users\markfeighery\source\repos\NDHE_2\NDHE_2\ndheModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ndheDb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HairExtensions'
CREATE TABLE [dbo].[HairExtensions] (
    [HairId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [NumOfPacks] nvarchar(max)  NOT NULL,
    [Option] nvarchar(max)  NOT NULL,
    [ContactNum] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Posts'
CREATE TABLE [dbo].[Posts] (
    [PostId] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [HairExtensionHairId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [HairId] in table 'HairExtensions'
ALTER TABLE [dbo].[HairExtensions]
ADD CONSTRAINT [PK_HairExtensions]
    PRIMARY KEY CLUSTERED ([HairId] ASC);
GO

-- Creating primary key on [PostId] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [PK_Posts]
    PRIMARY KEY CLUSTERED ([PostId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [HairExtensionHairId] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [FK_HairExtensionPost]
    FOREIGN KEY ([HairExtensionHairId])
    REFERENCES [dbo].[HairExtensions]
        ([HairId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HairExtensionPost'
CREATE INDEX [IX_FK_HairExtensionPost]
ON [dbo].[Posts]
    ([HairExtensionHairId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------