/****** Object:  ForeignKey [FK_Pets_Owners_OwnerId]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_Owners_OwnerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] DROP CONSTRAINT [FK_Pets_Owners_OwnerId]
GO
/****** Object:  ForeignKey [FK_Pets_PetTypes_PetTypeId]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_PetTypes_PetTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] DROP CONSTRAINT [FK_Pets_PetTypes_PetTypeId]
GO
/****** Object:  ForeignKey [FK_VetSpecialties_Specialties_Specialty_Id]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Specialties_Specialty_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties] DROP CONSTRAINT [FK_VetSpecialties_Specialties_Specialty_Id]
GO
/****** Object:  ForeignKey [FK_VetSpecialties_Vets_Vet_Id]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Vets_Vet_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties] DROP CONSTRAINT [FK_VetSpecialties_Vets_Vet_Id]
GO
/****** Object:  ForeignKey [FK_Visits_Pets_PetId]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Visits_Pets_PetId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Visits]'))
ALTER TABLE [dbo].[Visits] DROP CONSTRAINT [FK_Visits_Pets_PetId]
GO
/****** Object:  Table [dbo].[Visits]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Visits]') AND type in (N'U'))
DROP TABLE [dbo].[Visits]
GO
/****** Object:  Table [dbo].[VetSpecialties]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VetSpecialties]') AND type in (N'U'))
DROP TABLE [dbo].[VetSpecialties]
GO
/****** Object:  Table [dbo].[Pets]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
DROP TABLE [dbo].[Pets]
GO
/****** Object:  Table [dbo].[PetTypes]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PetTypes]') AND type in (N'U'))
DROP TABLE [dbo].[PetTypes]
GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specialties]') AND type in (N'U'))
DROP TABLE [dbo].[Specialties]
GO
/****** Object:  Table [dbo].[Vets]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vets]') AND type in (N'U'))
DROP TABLE [dbo].[Vets]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 03/06/2012 14:55:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Owners]') AND type in (N'U'))
DROP TABLE [dbo].[Owners]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Owners]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Owners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FirstName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[City] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telephone] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Owners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Owners] ON
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (1, N'Stevens', N'Elizabeth', N'33 Washington Park', N'Mount', N'670-375-09051')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (2, N'Martinez', N'Hugh', N'18 Pine Woodland', N'Prieska', N'666-218-31508')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (3, N'Edwards', N'Ann', N'25 Jackson Park', N'Polokwane', N'309-392-14844')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (4, N'Kirk', N'Karen', N'20 Washington Virginia', N'Midway', N'295-123-87432')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (5, N'Smith', N'Sandra', N'15 Beech Woodland', N'Hoopstad', N'659-916-69028')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (6, N'Johnson', N'Ruth', N'40 Madison Hill', N'Grove', N'133-152-19300')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (7, N'Martinez', N'Charles', N'30 Lincoln Woodland', N'Polokwane', N'335-638-48380')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (8, N'Kirby', N'Brian', N'20 Wilson Sunset', N'Ogies', N'652-724-66756')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (9, N'Martinez', N'Michael', N'10 Adams Woodland', N'Greenwood', N'705-134-54793')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (10, N'Martin', N'Carol', N'23 Maple Virginia', N'Bultfontein', N'525-464-14097')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (11, N'Thomas', N'Robert', N'19 Acacia Hill', N'Franklin', N'434-053-59813')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (12, N'Lee', N'Hugh', N'27 Cherry Woodland', N'Bultfontein', N'604-973-62014')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (13, N'Thomas', N'Lucy', N'4 Wilson Hill', N'Trompsburg', N'348-773-55613')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (14, N'Lee', N'Terry', N'25 Elm Woodland', N'Musina', N'593-784-36122')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (15, N'Peterson', N'Mary', N'20 Birch Highland', N'Tembisa', N'977-015-18713')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (16, N'Martinez', N'Anna', N'6 Chestnut Hill', N'Ogies', N'028-288-66069')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (17, N'Jones', N'Tabitha', N'45 Washington Hill', N'Musina', N'497-359-95349')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (18, N'Davies', N'Mary', N'8 Madison Sunset', N'Kgatlahong', N'903-864-82291')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (19, N'Lee', N'Ruth', N'25 Chestnut Hill', N'Bela', N'721-770-12155')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (20, N'Williams', N'Deborah', N'43 Chestnut Park', N'Tauranga', N'885-430-78670')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (21, N'Lee', N'Lisa', N'20 Madison Sunset', N'Bothaville', N'469-774-58639')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (22, N'Davies', N'Simon', N'36 Birch Woodland', N'Mount', N'262-009-60484')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (23, N'Harris', N'Anne', N'33 Madison Virginia', N'Henneman', N'508-566-86125')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (24, N'Jones', N'Susan', N'21 Madison Sunset', N'Tekoza', N'612-402-25201')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (25, N'Peterson', N'Harold', N'47 Lincoln Virginia', N'Rotorua', N'886-297-02544')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (26, N'Garcia', N'Edward', N'19 Lincoln Virginia', N'Bothaville', N'228-733-90047')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (27, N'Garcia', N'Jason', N'38 Cedar Highland', N'Wesselsbron', N'527-993-95886')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (28, N'Lee', N'Eve', N'20 Walnut Highland', N'Centerville', N'195-575-94360')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (29, N'Taylor', N'Matthew', N'23 Linden Woodland', N'Bela', N'116-677-26420')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (30, N'Stevens', N'Hugh', N'9 Wilson Highland', N'Fairview', N'917-849-89214')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (31, N'Kirk', N'William', N'46 Jefferson Sunset', N'Mount', N'711-552-72398')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (32, N'Williams', N'John', N'45 Lincoln Highland', N'Mount', N'129-527-20373')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (33, N'Jones', N'Linda', N'12 Wilson Virginia', N'Taupo', N'338-045-48904')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (34, N'Thompson', N'Marcus', N'47 Chestnut Woodland', N'Kgatlahong', N'530-895-62376')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (35, N'Kirk', N'Philip', N'45 Cherry Highland', N'Tembisa', N'377-285-45865')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (36, N'Thompson', N'Terry', N'4 Oak Park', N'Salem', N'602-132-17785')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (37, N'Kirk', N'Tabitha', N'49 Rose Virginia', N'Tembisa', N'659-915-11069')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (38, N'Martinez', N'Hugh', N'10 Cherry Virginia', N'Upington', N'042-456-77604')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (39, N'Martin', N'Ruth', N'15 Laurel Park', N'Sebokeng', N'628-354-46573')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (40, N'Stevens', N'Arthur', N'36 Birch Park', N'Tauranga', N'445-823-63192')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (41, N'Martinez', N'Adam', N'37 Jackson Park', N'Henneman', N'562-730-72748')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (42, N'Lee', N'Anthony', N'9 Wilson Hill', N'Salem', N'083-794-54700')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (43, N'Smith', N'William', N'15 Birch Hill', N'Greenwood', N'297-430-81999')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (44, N'Thomas', N'Roger', N'32 Oak Hill', N'Tswane', N'092-755-58156')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (45, N'Jefferson', N'Donald', N'4 Franklin Highland', N'Tswane', N'718-248-26687')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (46, N'Williams', N'Herbert', N'13 Jefferson Sunset', N'Fairview', N'734-410-93076')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (47, N'Taylor', N'Ursula', N'32 Madison Park', N'Trompsburg', N'963-107-82181')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (48, N'Davies', N'Mary', N'16 Cherry Woodland', N'Greenwood', N'835-938-19015')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (49, N'Martin', N'Terry', N'29 Laurel Sunset', N'Salem', N'654-712-90988')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (50, N'Peterson', N'Susan', N'4 Franklin Park', N'Fairview', N'415-309-13574')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (51, N'Jefferson', N'Cheryl', N'44 Madison Virginia', N'Wesselsbron', N'300-413-18209')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (52, N'Martinez', N'Anne', N'13 Laurel Park', N'Tekoza', N'401-199-68431')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (53, N'Kirby', N'Adam', N'46 Franklin Woodland', N'Bela', N'844-190-60539')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (54, N'Thompson', N'Philip', N'17 Elm Woodland', N'Midway', N'482-514-69177')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (55, N'Taylor', N'Richard', N'41 Jackson Sunset', N'Pleasant', N'498-607-75777')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (56, N'Lee', N'David', N'22 Willow Woodland', N'Muntaung', N'229-323-58916')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (57, N'Thomas', N'Anna', N'22 Linden Woodland', N'Taupo', N'640-576-66539')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (58, N'Thomas', N'Alison', N'33 Wilson Sunset', N'Tauranga', N'103-888-15523')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (59, N'Jones', N'Charles', N'25 Beech Sunset', N'Muntaung', N'493-077-54563')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (60, N'Jones', N'Arthur', N'2 Adams Virginia', N'Rotorua', N'823-879-16346')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (61, N'Jefferson', N'Eve', N'22 Elm Hill', N'Upington', N'079-101-68952')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (62, N'Kirk', N'Robyn', N'28 Linden Sunset', N'Whakatane', N'632-649-93108')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (63, N'Johnson', N'Mary', N'43 Birch Woodland', N'Bothaville', N'703-530-25986')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (64, N'Davies', N'Kevin', N'12 Maple Highland', N'Trompsburg', N'735-729-06784')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (65, N'Lee', N'Christopher', N'29 Wilson Highland', N'Greenwood', N'849-113-06864')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (66, N'Lee', N'Cheryl', N'45 Adams Hill', N'Prieska', N'631-110-56986')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (67, N'Smith', N'Maria', N'25 Beech Virginia', N'Georgetown', N'163-197-02759')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (68, N'Stevens', N'William', N'30 Willow Virginia', N'Centerville', N'420-989-27895')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (69, N'Martin', N'Donald', N'1 Birch Hill', N'Whakatane', N'842-506-82118')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (70, N'Kirk', N'Ronald', N'37 Franklin Woodland', N'Hoopstad', N'144-127-78736')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (71, N'Thompson', N'Mary', N'47 Birch Highland', N'Bela', N'311-138-18315')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (72, N'Martin', N'Daniel', N'23 Lincoln Virginia', N'Kgatlahong', N'864-368-72044')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (73, N'Jones', N'Sarah', N'4 Acacia Park', N'Muntaung', N'803-820-64943')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (74, N'Lee', N'Helen', N'24 Oak Park', N'Tekoza', N'559-819-26068')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (75, N'Martinez', N'Marcus', N'8 Laurel Hill', N'Henneman', N'465-681-53581')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (76, N'Kirby', N'Nancy', N'38 Lincoln Hill', N'Fairview', N'418-219-47032')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (77, N'Martin', N'Alison', N'18 Rose Sunset', N'Ogies', N'970-731-06645')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (78, N'Garcia', N'Matthew', N'12 Cedar Park', N'Oak', N'334-396-73914')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (79, N'Kirby', N'Jessica', N'36 Jefferson Highland', N'Tswane', N'614-310-01733')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (80, N'Martin', N'Donald', N'13 Birch Virginia', N'Bultfontein', N'201-898-77687')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (81, N'Edwards', N'Laura', N'35 Elm Park', N'Franklin', N'087-992-47484')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (82, N'Thompson', N'John', N'26 Oak Hill', N'Georgetown', N'222-103-19952')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (83, N'Thompson', N'Matthew', N'9 Jackson Woodland', N'Pofadder', N'054-488-02617')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (84, N'Jones', N'Ann', N'37 Lincoln Hill', N'Mount', N'787-526-54638')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (85, N'Martinez', N'Deborah', N'27 Walnut Hill', N'Henneman', N'753-166-41666')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (86, N'Kirk', N'Margaret', N'22 Beech Woodland', N'Whakatane', N'006-782-56190')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (87, N'Kirk', N'Adam', N'45 Oak Highland', N'Oak', N'476-094-88017')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (88, N'Thompson', N'Polly', N'31 Elm Woodland', N'Upington', N'656-859-08307')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (89, N'Martinez', N'Linda', N'37 Jackson Hill', N'Rotorua', N'933-342-76767')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (90, N'Kirk', N'Richard', N'28 Washington Park', N'Karatara', N'024-769-38694')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (91, N'Peterson', N'Jennifer', N'49 Franklin Virginia', N'Kgatlahong', N'420-343-96724')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (92, N'Lee', N'Judith', N'39 Adams Hill', N'Taupo', N'063-182-73498')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (93, N'Davies', N'Helen', N'9 Wilson Sunset', N'Tswane', N'718-697-53279')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (94, N'Jones', N'Harold', N'16 Laurel Highland', N'Salem', N'376-563-98802')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (95, N'Lee', N'Alison', N'40 Jefferson Sunset', N'Muntaung', N'818-520-05800')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (96, N'Johnson', N'David', N'14 Cherry Sunset', N'Ogies', N'471-595-06580')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (97, N'Kirk', N'Ursula', N'41 Washington Hill', N'Goukamma', N'421-463-33153')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (98, N'Harris', N'Hugh', N'15 Pine Virginia', N'Franklin', N'255-136-89481')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (99, N'Edwards', N'Eve', N'8 Maple Highland', N'Kgatlahong', N'346-644-11346')
INSERT [dbo].[Owners] ([Id], [LastName], [FirstName], [Address], [City], [Telephone]) VALUES (100, N'Jones', N'Charlotte', N'25 Willow Park', N'Franklin', N'889-751-43115')
GO
print 'Processed 100 total records'
SET IDENTITY_INSERT [dbo].[Owners] OFF
/****** Object:  Table [dbo].[Vets]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Vets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Vets] ON
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (1, N'Jennifer', N'Jackson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (2, N'Mary', N'Brown')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (3, N'Philip', N'Thomas')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (4, N'Mark', N'Oates')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (5, N'Mark', N'Edwards')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (6, N'Anne', N'Thomas')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (7, N'Lisa', N'Robertson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (8, N'Laura', N'Kirby')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (9, N'Sharon', N'Burrows')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (10, N'Diana', N'Anthony')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (11, N'Daniel', N'Thatcher')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (12, N'Sandra', N'Anthony')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (13, N'Jason', N'Clarke')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (14, N'Brian', N'Peters')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (15, N'Robert', N'Rodriguez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (16, N'Beryl', N'Smith')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (17, N'Barbara', N'Stevens')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (18, N'Victoria', N'Anthony')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (19, N'Eve', N'Davies')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (20, N'Betty', N'Thompson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (21, N'Helena', N'Stevens')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (22, N'Wendy', N'Lake')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (23, N'Kenneth', N'Jones')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (24, N'Kimberly', N'Stevens')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (25, N'Harold', N'Martinez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (26, N'Laura', N'Lake')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (27, N'Edward', N'Robinson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (28, N'Robert', N'Rodriguez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (29, N'Fiona', N'Clarke')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (30, N'Mary', N'Davis')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (31, N'Anthony', N'Kirk')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (32, N'Karen', N'Harrison')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (33, N'Daniel', N'Peters')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (34, N'Herbert', N'Taylor')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (35, N'Christopher', N'Martinez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (36, N'Thomas', N'Martin')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (37, N'Charlotte', N'Major')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (38, N'Mark', N'Smythe')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (39, N'Kenneth', N'Taylor')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (40, N'Anthony', N'Moore')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (41, N'George', N'Major')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (42, N'James', N'Thompson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (43, N'Daniel', N'Kirk')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (44, N'Jessica', N'Thomas')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (45, N'Ann', N'Jackson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (46, N'Donald', N'Walker')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (47, N'Elizabeth', N'Moore')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (48, N'Beryl', N'Johnson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (49, N'Betty', N'Kirk')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (50, N'Ruth', N'Jeffries')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (51, N'Simon', N'Williams')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (52, N'Brian', N'Clark')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (53, N'Mary', N'Andrews')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (54, N'Edgar', N'Robertson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (55, N'Sharon', N'Stevens')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (56, N'Donald', N'Robertson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (57, N'Susan', N'Major')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (58, N'Richard', N'Hall')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (59, N'Marcus', N'Rodriguez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (60, N'Marcus', N'Davidson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (61, N'Michael', N'Hall')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (62, N'Robyn', N'Harrison')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (63, N'Michael', N'Martinez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (64, N'Jessica', N'White')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (65, N'Karen', N'Lewis')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (66, N'Sharon', N'Anthony')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (67, N'Elizabeth', N'Edwards')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (68, N'Lisa', N'Thompson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (69, N'Ann', N'Washington')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (70, N'Anthony', N'Burrows')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (71, N'Elizabeth', N'Kirk')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (72, N'William', N'Brown')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (73, N'Ronald', N'Martin')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (74, N'Daniel', N'Baker')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (75, N'Anne', N'Lee')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (76, N'Anne', N'Johnson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (77, N'Kimberly', N'Edwards')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (78, N'Lucy', N'Robinson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (79, N'Edward', N'Grant')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (80, N'Edgar', N'Baker')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (81, N'Ronald', N'Smith')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (82, N'William', N'Oates')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (83, N'Joseph', N'Clarke')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (84, N'Charlotte', N'Lee')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (85, N'Mark', N'Anderson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (86, N'Christopher', N'Clark')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (87, N'Simon', N'Lee')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (88, N'Michelle', N'Williams')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (89, N'Tabitha', N'Lake')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (90, N'Ursula', N'Peterson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (91, N'William', N'Peterson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (92, N'Michael', N'Martinez')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (93, N'Cheryl', N'Hall')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (94, N'Edwin', N'Baker')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (95, N'Charlotte', N'Martin')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (96, N'Patricia', N'Harrison')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (97, N'Brian', N'Wilson')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (98, N'Victoria', N'Clarke')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (99, N'Lisa', N'Jeffries')
INSERT [dbo].[Vets] ([Id], [FirstName], [LastName]) VALUES (100, N'Paul', N'Clark')
GO
print 'Processed 100 total records'
SET IDENTITY_INSERT [dbo].[Vets] OFF
/****** Object:  Table [dbo].[Specialties]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specialties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Specialties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Specialties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Specialties] ON
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (1, N'dentistry')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (2, N'dermatology')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (3, N'emergency')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (4, N'imaging')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (5, N'radiology')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (6, N'surgery')
INSERT [dbo].[Specialties] ([Id], [Name]) VALUES (7, N'vision')
SET IDENTITY_INSERT [dbo].[Specialties] OFF
/****** Object:  Table [dbo].[PetTypes]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PetTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PetTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PetTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[PetTypes] ON
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (1, N'Hamster')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (2, N'Goldfish')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (3, N'Cat')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (4, N'Toucan')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (5, N'Mouse')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (6, N'Pig')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (7, N'Gerbil')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (8, N'Iguana')
INSERT [dbo].[PetTypes] ([Id], [Name]) VALUES (9, N'Dog')
SET IDENTITY_INSERT [dbo].[PetTypes] OFF
/****** Object:  Table [dbo].[Pets]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BirthDate] [datetime] NOT NULL,
	[PetTypeId] [int] NOT NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK_Pets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND name = N'IX_OwnerId')
CREATE NONCLUSTERED INDEX [IX_OwnerId] ON [dbo].[Pets] 
(
	[OwnerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Pets]') AND name = N'IX_PetTypeId')
CREATE NONCLUSTERED INDEX [IX_PetTypeId] ON [dbo].[Pets] 
(
	[PetTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[Pets] ON
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (1, N'Edward', CAST(0x0000A08200F6E5C1 AS DateTime), 1, 1)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (2, N'Margaret', CAST(0x0000A073007CE74C AS DateTime), 1, 1)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (3, N'Alison', CAST(0x0000A126003BE455 AS DateTime), 1, 8)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (4, N'Thomas', CAST(0x00009C9200BF5DC3 AS DateTime), 1, 11)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (5, N'Carol', CAST(0x0000A0F80053A8BC AS DateTime), 1, 23)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (6, N'Elizabeth', CAST(0x0000990A01284A54 AS DateTime), 1, 23)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (7, N'Eve', CAST(0x0000A16C00393A59 AS DateTime), 1, 28)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (8, N'Patricia', CAST(0x00009F540062688C AS DateTime), 1, 31)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (9, N'Victoria', CAST(0x0000A0940051B58D AS DateTime), 1, 33)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (10, N'Ruth', CAST(0x00009BE800E56DF6 AS DateTime), 1, 34)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (11, N'Margaret', CAST(0x00009A6200990F94 AS DateTime), 1, 36)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (12, N'James', CAST(0x00009CC301402C1B AS DateTime), 1, 43)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (13, N'Brian', CAST(0x00009C22017E2880 AS DateTime), 1, 47)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (14, N'Victoria', CAST(0x0000A13D010864EF AS DateTime), 1, 56)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (15, N'Felicity', CAST(0x00009FF6004A005A AS DateTime), 1, 58)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (16, N'Dorothy', CAST(0x0000A04300FD3299 AS DateTime), 1, 61)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (17, N'Lisa', CAST(0x00009A1E00E3545D AS DateTime), 1, 63)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (18, N'Elizabeth', CAST(0x00009E2500A7731C AS DateTime), 1, 68)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (19, N'Edgar', CAST(0x00009C880185F933 AS DateTime), 1, 74)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (20, N'Alison', CAST(0x00009A4C00B1D2B5 AS DateTime), 1, 79)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (21, N'Fiona', CAST(0x0000A0B8016B5E57 AS DateTime), 1, 82)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (22, N'Edgar', CAST(0x00009F65007D69F2 AS DateTime), 1, 83)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (23, N'Edward', CAST(0x00009A1D00D8849C AS DateTime), 1, 84)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (24, N'John', CAST(0x00009B7E003A28CE AS DateTime), 1, 87)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (25, N'Christopher', CAST(0x0000A09300C29639 AS DateTime), 1, 88)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (26, N'Edward', CAST(0x00009A2500C76133 AS DateTime), 1, 91)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (27, N'Donald', CAST(0x00009ADE003CDD73 AS DateTime), 1, 92)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (28, N'Philip', CAST(0x00009AFD012B7148 AS DateTime), 1, 96)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (29, N'Michelle', CAST(0x00009A23017EFC70 AS DateTime), 2, 1)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (30, N'Susan', CAST(0x0000A06300019757 AS DateTime), 2, 15)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (31, N'Lisa', CAST(0x00009D80012D028B AS DateTime), 2, 26)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (32, N'Anne', CAST(0x00009A2001649AFA AS DateTime), 2, 29)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (33, N'Adam', CAST(0x00009CD901834D9F AS DateTime), 2, 39)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (34, N'Helena', CAST(0x00009927014318EF AS DateTime), 2, 43)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (35, N'Laura', CAST(0x00009EFF017153C5 AS DateTime), 2, 48)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (36, N'Kimberly', CAST(0x0000993400BA30AA AS DateTime), 2, 58)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (37, N'Alison', CAST(0x00009A7301791C27 AS DateTime), 2, 67)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (38, N'Beryl', CAST(0x000099A201742F40 AS DateTime), 2, 70)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (39, N'Christopher', CAST(0x00009B50004B35DD AS DateTime), 2, 70)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (40, N'Simon', CAST(0x00009A1700EF700F AS DateTime), 2, 71)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (41, N'Ursula', CAST(0x00009FAA000A2AEE AS DateTime), 2, 91)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (42, N'Edwin', CAST(0x00009E8300CB3617 AS DateTime), 2, 93)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (43, N'Sandra', CAST(0x00009CB2007172D5 AS DateTime), 2, 96)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (44, N'Anne', CAST(0x00009B9500126AB5 AS DateTime), 2, 96)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (45, N'Mark', CAST(0x00009FE6001F9F96 AS DateTime), 2, 98)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (46, N'Diana', CAST(0x00009F2C0035976D AS DateTime), 2, 99)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (47, N'Charlotte', CAST(0x00009C7E00A7F913 AS DateTime), 2, 100)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (48, N'Lucy', CAST(0x0000A13B013B7ACC AS DateTime), 3, 2)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (49, N'Kevin', CAST(0x00009D68003094A0 AS DateTime), 3, 2)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (50, N'Herbert', CAST(0x00009EF30073DBAC AS DateTime), 3, 3)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (51, N'Anthony', CAST(0x00009DAC006EB2F9 AS DateTime), 3, 4)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (52, N'Judith', CAST(0x00009C53008437F7 AS DateTime), 3, 12)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (53, N'Eve', CAST(0x00009F800025FE18 AS DateTime), 3, 16)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (54, N'Ronald', CAST(0x00009F9900E4D915 AS DateTime), 3, 17)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (55, N'Linda', CAST(0x0000A16500354A82 AS DateTime), 3, 19)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (56, N'Richard', CAST(0x0000A12E0099B271 AS DateTime), 3, 28)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (57, N'Anne', CAST(0x00009C07010F9DFB AS DateTime), 3, 37)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (58, N'Ann', CAST(0x0000A06D00D4E539 AS DateTime), 3, 45)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (59, N'Ursula', CAST(0x00009FFB00455ABE AS DateTime), 3, 46)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (60, N'Donna', CAST(0x00009A3F00704526 AS DateTime), 3, 51)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (61, N'Jennifer', CAST(0x00009A8C01298A74 AS DateTime), 3, 52)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (62, N'Ronald', CAST(0x000099CC0072A68A AS DateTime), 3, 53)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (63, N'Anthony', CAST(0x0000A11600EB7453 AS DateTime), 3, 53)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (64, N'Helena', CAST(0x0000A08F01359A5E AS DateTime), 3, 56)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (65, N'Nancy', CAST(0x00009CD00127A1E2 AS DateTime), 3, 61)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (66, N'Maria', CAST(0x0000A03300C7E678 AS DateTime), 3, 62)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (67, N'Jason', CAST(0x00009F200017AF44 AS DateTime), 3, 73)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (68, N'Joseph', CAST(0x0000A00A006B6558 AS DateTime), 3, 73)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (69, N'Sandra', CAST(0x00009C19013565ED AS DateTime), 3, 81)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (70, N'Beryl', CAST(0x0000A09F00C16C7E AS DateTime), 3, 83)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (71, N'Kevin', CAST(0x00009EFE00212F10 AS DateTime), 3, 87)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (72, N'Charlotte', CAST(0x00009E1200C9C9B0 AS DateTime), 3, 97)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (73, N'Michael', CAST(0x00009ADC0121343C AS DateTime), 4, 3)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (74, N'Diana', CAST(0x00009DF60022EF46 AS DateTime), 4, 10)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (75, N'Barbara', CAST(0x00009A2F00A67C9F AS DateTime), 4, 13)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (76, N'Patricia', CAST(0x00009D1F00159E4D AS DateTime), 4, 17)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (77, N'Michelle', CAST(0x00009A90006D2112 AS DateTime), 4, 29)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (78, N'Karen', CAST(0x00009B5001650347 AS DateTime), 4, 30)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (79, N'John', CAST(0x000099A300788A93 AS DateTime), 4, 35)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (80, N'Wendy', CAST(0x00009BE600FFB104 AS DateTime), 4, 36)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (81, N'Elizabeth', CAST(0x00009C100083075C AS DateTime), 4, 38)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (82, N'Marcus', CAST(0x00009C5100A8436D AS DateTime), 4, 41)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (83, N'Dorothy', CAST(0x00009E4C012188C2 AS DateTime), 4, 45)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (84, N'Nancy', CAST(0x00009AB10015A90A AS DateTime), 4, 48)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (85, N'Adam', CAST(0x00009AB700CD1E47 AS DateTime), 4, 50)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (86, N'Sandra', CAST(0x00009DD9016047C5 AS DateTime), 4, 57)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (87, N'Maria', CAST(0x000099240141C1DE AS DateTime), 4, 69)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (88, N'Laura', CAST(0x00009A2D0113AB70 AS DateTime), 4, 70)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (89, N'Hugh', CAST(0x00009951001FB594 AS DateTime), 4, 75)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (90, N'Arthur', CAST(0x00009F35007B8565 AS DateTime), 5, 4)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (91, N'Betty', CAST(0x00009FAF00F928AF AS DateTime), 5, 12)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (92, N'James', CAST(0x00009A3C00DADE64 AS DateTime), 5, 16)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (93, N'Edgar', CAST(0x00009DFE016329CE AS DateTime), 5, 18)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (94, N'Patricia', CAST(0x00009A7B00ED2A65 AS DateTime), 5, 24)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (95, N'Patricia', CAST(0x00009A2700271C0E AS DateTime), 5, 25)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (96, N'Edwin', CAST(0x00009C25001142CD AS DateTime), 5, 45)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (97, N'William', CAST(0x00009DC60003A48A AS DateTime), 5, 49)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (98, N'Paul', CAST(0x00009D3C00664949 AS DateTime), 5, 50)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (99, N'Hugh', CAST(0x00009D7A016B666E AS DateTime), 5, 71)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (100, N'Patricia', CAST(0x0000A14B002FFF17 AS DateTime), 5, 72)
GO
print 'Processed 100 total records'
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (101, N'Ann', CAST(0x000099F80122EB04 AS DateTime), 5, 76)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (102, N'Marcus', CAST(0x00009ACA00C9AE7F AS DateTime), 5, 77)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (103, N'Anthony', CAST(0x00009A61016D806D AS DateTime), 5, 81)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (104, N'Polly', CAST(0x0000A102002CC770 AS DateTime), 5, 88)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (105, N'James', CAST(0x00009F0A005AAF24 AS DateTime), 5, 100)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (106, N'Paul', CAST(0x00009E5D009D534D AS DateTime), 5, 100)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (107, N'Charlotte', CAST(0x0000996401269531 AS DateTime), 6, 5)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (108, N'Matthew', CAST(0x00009E4B0113A076 AS DateTime), 6, 10)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (109, N'Wendy', CAST(0x0000A0AF013EA81A AS DateTime), 6, 19)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (110, N'Sandra', CAST(0x00009D470016CCA7 AS DateTime), 6, 20)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (111, N'Cheryl', CAST(0x00009A6B00B5AA98 AS DateTime), 6, 27)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (112, N'Lucy', CAST(0x0000A0BD00BB42A1 AS DateTime), 6, 28)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (113, N'Victoria', CAST(0x00009E3C013551B5 AS DateTime), 6, 54)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (114, N'Linda', CAST(0x00009F5100A2190A AS DateTime), 6, 55)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (115, N'Helena', CAST(0x00009B460129142E AS DateTime), 6, 60)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (116, N'Judith', CAST(0x00009B3300E6A5F3 AS DateTime), 6, 61)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (117, N'Victoria', CAST(0x00009DDA003FB989 AS DateTime), 6, 62)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (118, N'Daniel', CAST(0x00009D1C0121B7DA AS DateTime), 6, 64)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (119, N'Kevin', CAST(0x00009D740127ADA3 AS DateTime), 6, 64)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (120, N'Tabitha', CAST(0x000099780128879F AS DateTime), 6, 66)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (121, N'Fiona', CAST(0x00009B35018AF09D AS DateTime), 6, 68)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (122, N'Hugh', CAST(0x00009F44011D6110 AS DateTime), 6, 78)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (123, N'Judith', CAST(0x00009DD4000581D7 AS DateTime), 6, 82)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (124, N'Eve', CAST(0x0000A07F0109CAA8 AS DateTime), 6, 83)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (125, N'Brian', CAST(0x00009A8601887241 AS DateTime), 6, 95)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (126, N'Barbara', CAST(0x0000A03300824904 AS DateTime), 6, 99)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (127, N'Polly', CAST(0x00009C3C007D3F31 AS DateTime), 7, 6)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (128, N'Harold', CAST(0x00009E71006506CD AS DateTime), 7, 7)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (129, N'Linda', CAST(0x00009997012BFAD6 AS DateTime), 7, 9)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (130, N'Cheryl', CAST(0x00009A4401050F8E AS DateTime), 7, 10)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (131, N'Jessica', CAST(0x000099C601512D7F AS DateTime), 7, 15)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (132, N'Ronald', CAST(0x00009D78000B1122 AS DateTime), 7, 19)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (133, N'Dorothy', CAST(0x00009B78015A7290 AS DateTime), 7, 22)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (134, N'Betty', CAST(0x00009BD901245BB1 AS DateTime), 7, 24)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (135, N'Christopher', CAST(0x00009F0C009F7831 AS DateTime), 7, 32)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (136, N'Beryl', CAST(0x00009A80016A2C01 AS DateTime), 7, 37)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (137, N'Carol', CAST(0x00009B5801513372 AS DateTime), 7, 38)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (138, N'Helena', CAST(0x00009ACE00EEB7BF AS DateTime), 7, 40)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (139, N'Polly', CAST(0x00009B07000D2FCF AS DateTime), 7, 40)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (140, N'Kevin', CAST(0x00009A8200DEC61D AS DateTime), 7, 42)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (141, N'James', CAST(0x00009E1F0101F1A2 AS DateTime), 7, 42)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (142, N'Nancy', CAST(0x0000A0B401504F03 AS DateTime), 7, 47)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (143, N'Christopher', CAST(0x00009DF3002E1C07 AS DateTime), 7, 50)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (144, N'Edwin', CAST(0x00009DC6016E6CE5 AS DateTime), 7, 57)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (145, N'Cheryl', CAST(0x000098FB010F1D61 AS DateTime), 7, 67)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (146, N'Edwin', CAST(0x00009CDD0081FA39 AS DateTime), 7, 75)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (147, N'Patricia', CAST(0x00009D8000A00423 AS DateTime), 7, 81)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (148, N'Jessica', CAST(0x0000A06D00C0C99D AS DateTime), 7, 85)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (149, N'Barbara', CAST(0x00009B45014B8DDC AS DateTime), 7, 86)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (150, N'Jason', CAST(0x00009E820029F349 AS DateTime), 7, 94)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (151, N'Alison', CAST(0x00009A5400242B36 AS DateTime), 7, 94)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (152, N'Simon', CAST(0x0000A0F400ACAB5E AS DateTime), 7, 95)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (153, N'Ruth', CAST(0x00009BF50013D8C5 AS DateTime), 8, 8)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (154, N'Robert', CAST(0x0000A16900F8F2C7 AS DateTime), 8, 14)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (155, N'Brian', CAST(0x00009A530160E5B9 AS DateTime), 8, 16)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (156, N'Charlotte', CAST(0x00009AF0011B10C9 AS DateTime), 8, 23)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (157, N'John', CAST(0x0000A0F700D3F60E AS DateTime), 8, 25)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (158, N'Anna', CAST(0x000099AA00520088 AS DateTime), 8, 27)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (159, N'Jessica', CAST(0x00009EE901066A7A AS DateTime), 8, 29)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (160, N'Thomas', CAST(0x000098FB00DA4D22 AS DateTime), 8, 33)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (161, N'Kevin', CAST(0x00009988001F5D46 AS DateTime), 8, 33)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (162, N'Ronald', CAST(0x00009EE800205236 AS DateTime), 8, 37)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (163, N'Ann', CAST(0x00009E2200122871 AS DateTime), 8, 38)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (164, N'Diana', CAST(0x00009A2601020461 AS DateTime), 8, 41)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (165, N'Helena', CAST(0x0000A0010139FCFF AS DateTime), 8, 51)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (166, N'Helena', CAST(0x0000A0D3014ABF62 AS DateTime), 8, 65)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (167, N'Philip', CAST(0x00009D86005BA039 AS DateTime), 8, 72)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (168, N'Ursula', CAST(0x00009A3200A4206F AS DateTime), 8, 77)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (169, N'Maria', CAST(0x00009BD000D4CD02 AS DateTime), 8, 80)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (170, N'Nancy', CAST(0x00009A8B005C7803 AS DateTime), 8, 87)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (171, N'Sharon', CAST(0x00009E0B0146AA57 AS DateTime), 8, 89)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (172, N'Charles', CAST(0x00009CC500CE2E98 AS DateTime), 8, 90)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (173, N'George', CAST(0x0000A068013E8ACB AS DateTime), 9, 12)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (174, N'Polly', CAST(0x00009E9F010E1A07 AS DateTime), 9, 21)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (175, N'Laura', CAST(0x00009A7C00784437 AS DateTime), 9, 21)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (176, N'Sarah', CAST(0x00009C190189F576 AS DateTime), 9, 25)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (177, N'Adam', CAST(0x000099AB00A05800 AS DateTime), 9, 27)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (178, N'Edgar', CAST(0x00009E1700983EF7 AS DateTime), 9, 30)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (179, N'Mark', CAST(0x0000A13B002E7505 AS DateTime), 9, 44)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (180, N'Donna', CAST(0x00009F4000D660F4 AS DateTime), 9, 47)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (181, N'Hugh', CAST(0x00009B0E0070B0FE AS DateTime), 9, 56)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (182, N'Judith', CAST(0x00009A50007FD7F2 AS DateTime), 9, 59)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (183, N'Laura', CAST(0x00009E04000109DA AS DateTime), 9, 60)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (184, N'Joseph', CAST(0x00009B2B000AD5AC AS DateTime), 9, 60)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (185, N'Helen', CAST(0x00009998004BF84F AS DateTime), 9, 63)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (186, N'Edward', CAST(0x000099FC007FF7A4 AS DateTime), 9, 63)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (187, N'Terry', CAST(0x0000997900D80CDE AS DateTime), 9, 64)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (188, N'Tabitha', CAST(0x00009DF701570E90 AS DateTime), 9, 66)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (189, N'Philip', CAST(0x00009D9B00DC3172 AS DateTime), 9, 67)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (190, N'Philip', CAST(0x00009BBB00DDBA09 AS DateTime), 9, 68)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (191, N'Barbara', CAST(0x0000999500D1CFBD AS DateTime), 9, 76)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (192, N'Helena', CAST(0x00009E2A0056245F AS DateTime), 9, 77)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (193, N'Terry', CAST(0x0000A0EA0134FDB6 AS DateTime), 9, 88)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (194, N'Linda', CAST(0x00009FDC01675860 AS DateTime), 9, 91)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (195, N'Charlotte', CAST(0x00009FA40053C32D AS DateTime), 9, 92)
INSERT [dbo].[Pets] ([Id], [Name], [BirthDate], [PetTypeId], [OwnerId]) VALUES (196, N'Matthew', CAST(0x00009DE60160739B AS DateTime), 9, 97)
SET IDENTITY_INSERT [dbo].[Pets] OFF
/****** Object:  Table [dbo].[VetSpecialties]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VetSpecialties]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VetSpecialties](
	[Vet_Id] [int] NOT NULL,
	[Specialty_Id] [int] NOT NULL,
 CONSTRAINT [PK_VetSpecialties] PRIMARY KEY CLUSTERED 
(
	[Vet_Id] ASC,
	[Specialty_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VetSpecialties]') AND name = N'IX_Specialty_Id')
CREATE NONCLUSTERED INDEX [IX_Specialty_Id] ON [dbo].[VetSpecialties] 
(
	[Specialty_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[VetSpecialties]') AND name = N'IX_Vet_Id')
CREATE NONCLUSTERED INDEX [IX_Vet_Id] ON [dbo].[VetSpecialties] 
(
	[Vet_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (4, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (12, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (19, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (20, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (22, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (25, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (30, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (33, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (34, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (44, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (45, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (51, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (56, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (58, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (62, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (69, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (70, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (81, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (87, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (88, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (96, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (99, 1)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (1, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (5, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (10, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (12, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (13, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (17, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (23, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (27, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (30, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (32, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (35, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (36, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (38, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (45, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (46, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (50, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (51, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (54, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (57, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (59, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (65, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (66, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (69, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (71, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (75, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (78, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (79, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (82, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (85, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (89, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (92, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (97, 2)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (1, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (6, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (7, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (8, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (9, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (11, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (18, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (20, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (22, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (23, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (26, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (33, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (36, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (37, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (42, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (46, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (47, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (48, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (51, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (55, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (56, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (61, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (62, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (69, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (70, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (71, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (72, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (79, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (80, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (83, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (85, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (90, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (98, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (99, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (100, 3)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (1, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (3, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (4, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (5, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (7, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (11, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (13, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (14, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (15, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (17, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (18, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (19, 4)
GO
print 'Processed 100 total records'
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (22, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (24, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (26, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (30, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (31, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (36, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (37, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (39, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (44, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (49, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (50, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (61, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (63, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (66, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (67, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (72, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (73, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (75, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (85, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (91, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (92, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (96, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (99, 4)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (5, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (9, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (12, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (13, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (19, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (21, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (23, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (24, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (28, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (29, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (31, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (32, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (33, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (35, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (38, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (40, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (48, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (49, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (50, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (53, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (54, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (60, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (65, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (66, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (67, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (72, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (76, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (78, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (84, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (86, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (89, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (92, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (94, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (96, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (97, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (99, 5)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (1, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (2, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (3, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (4, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (8, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (11, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (13, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (17, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (18, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (20, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (23, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (26, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (34, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (35, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (42, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (43, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (46, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (52, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (61, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (66, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (68, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (70, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (71, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (77, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (78, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (82, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (84, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (85, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (86, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (91, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (95, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (96, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (97, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (100, 6)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (3, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (8, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (12, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (15, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (16, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (20, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (22, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (25, 7)
GO
print 'Processed 200 total records'
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (28, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (33, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (34, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (35, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (41, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (42, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (44, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (45, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (53, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (55, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (56, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (57, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (60, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (62, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (64, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (67, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (71, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (72, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (74, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (76, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (78, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (82, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (88, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (89, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (91, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (92, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (93, 7)
INSERT [dbo].[VetSpecialties] ([Vet_Id], [Specialty_Id]) VALUES (97, 7)
/****** Object:  Table [dbo].[Visits]    Script Date: 03/06/2012 14:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Visits]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Visits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PetId] [int] NOT NULL,
 CONSTRAINT [PK_Visits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Visits]') AND name = N'IX_PetId')
CREATE NONCLUSTERED INDEX [IX_PetId] ON [dbo].[Visits] 
(
	[PetId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  ForeignKey [FK_Pets_Owners_OwnerId]    Script Date: 03/06/2012 14:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_Owners_OwnerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_Owners_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owners] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_Owners_OwnerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_Owners_OwnerId]
GO
/****** Object:  ForeignKey [FK_Pets_PetTypes_PetTypeId]    Script Date: 03/06/2012 14:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_PetTypes_PetTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets]  WITH CHECK ADD  CONSTRAINT [FK_Pets_PetTypes_PetTypeId] FOREIGN KEY([PetTypeId])
REFERENCES [dbo].[PetTypes] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pets_PetTypes_PetTypeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pets]'))
ALTER TABLE [dbo].[Pets] CHECK CONSTRAINT [FK_Pets_PetTypes_PetTypeId]
GO
/****** Object:  ForeignKey [FK_VetSpecialties_Specialties_Specialty_Id]    Script Date: 03/06/2012 14:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Specialties_Specialty_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties]  WITH CHECK ADD  CONSTRAINT [FK_VetSpecialties_Specialties_Specialty_Id] FOREIGN KEY([Specialty_Id])
REFERENCES [dbo].[Specialties] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Specialties_Specialty_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties] CHECK CONSTRAINT [FK_VetSpecialties_Specialties_Specialty_Id]
GO
/****** Object:  ForeignKey [FK_VetSpecialties_Vets_Vet_Id]    Script Date: 03/06/2012 14:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Vets_Vet_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties]  WITH CHECK ADD  CONSTRAINT [FK_VetSpecialties_Vets_Vet_Id] FOREIGN KEY([Vet_Id])
REFERENCES [dbo].[Vets] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VetSpecialties_Vets_Vet_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[VetSpecialties]'))
ALTER TABLE [dbo].[VetSpecialties] CHECK CONSTRAINT [FK_VetSpecialties_Vets_Vet_Id]
GO
/****** Object:  ForeignKey [FK_Visits_Pets_PetId]    Script Date: 03/06/2012 14:55:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Visits_Pets_PetId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Visits]'))
ALTER TABLE [dbo].[Visits]  WITH CHECK ADD  CONSTRAINT [FK_Visits_Pets_PetId] FOREIGN KEY([PetId])
REFERENCES [dbo].[Pets] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Visits_Pets_PetId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Visits]'))
ALTER TABLE [dbo].[Visits] CHECK CONSTRAINT [FK_Visits_Pets_PetId]
GO
