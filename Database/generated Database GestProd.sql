USE [GestPro]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[NumClient] [int] NOT NULL,
	[NomClient] [varchar](50) NULL,
	[PrenomCient] [varchar](50) NULL,
	[Cin] [varchar](8) NULL,
	[Datae_Naiss] [date] NULL,
	[TypeClient] [varchar](30) NULL,
 CONSTRAINT [PK_NumClient] PRIMARY KEY CLUSTERED 
(
	[NumClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entrees]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrees](
	[NumEntre] [int] NOT NULL,
	[DateEntre] [date] NULL,
	[QteEntre] [int] NULL,
	[reference_Pro] [int] NULL,
	[codeFournisseur] [int] NULL,
	[code_Personnel] [int] NULL,
 CONSTRAINT [PK_Entrees] PRIMARY KEY CLUSTERED 
(
	[NumEntre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[CodeFournisseur] [int] NOT NULL,
	[RaissonSocialeFou] [varchar](50) NULL,
	[AdresseFou] [varchar](50) NULL,
 CONSTRAINT [PK_Fournisseur] PRIMARY KEY CLUSTERED 
(
	[CodeFournisseur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personnel](
	[Code_Personnel] [int] NOT NULL,
	[NomPersonnel] [varchar](50) NULL,
	[PrenomPersonnel] [varchar](50) NULL,
	[Datae_Naiss] [date] NULL,
	[Login_Pers] [varchar](20) NULL,
	[Password_Pers] [varchar](30) NULL,
 CONSTRAINT [PK_Personnel] PRIMARY KEY CLUSTERED 
(
	[Code_Personnel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produit]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produit](
	[Reference] [int] NOT NULL,
	[Designation] [varchar](100) NULL,
	[PUPro] [decimal](10, 2) NULL,
	[QteStock] [int] NULL,
 CONSTRAINT [PK_Produit] PRIMARY KEY CLUSTERED 
(
	[Reference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProduitVendus]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProduitVendus](
	[numVente] [int] NULL,
	[reference_Pro] [int] NULL,
	[QteVendus] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vente]    Script Date: 5/25/2017 9:18:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vente](
	[NumVente] [int] NOT NULL,
	[Datae_Vente] [date] NULL,
	[numClient] [int] NULL,
	[code_Personnel] [int] NULL,
	[Paye] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Vente] PRIMARY KEY CLUSTERED 
(
	[NumVente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Client] ([NumClient], [NomClient], [PrenomCient], [Cin], [Datae_Naiss], [TypeClient]) VALUES (1, N'N1', N'P1', N'C1', CAST(N'2001-01-15' AS Date), N'T1')
INSERT [dbo].[Client] ([NumClient], [NomClient], [PrenomCient], [Cin], [Datae_Naiss], [TypeClient]) VALUES (2, N'N22', N'P22', N'C22', CAST(N'2001-01-16' AS Date), N'T22')
INSERT [dbo].[Client] ([NumClient], [NomClient], [PrenomCient], [Cin], [Datae_Naiss], [TypeClient]) VALUES (3, N'N3', N'P3', N'C3', CAST(N'2001-01-15' AS Date), N'T3')
INSERT [dbo].[Client] ([NumClient], [NomClient], [PrenomCient], [Cin], [Datae_Naiss], [TypeClient]) VALUES (4, N'N3', N'P3', N'C3', CAST(N'2001-01-15' AS Date), N'T3')
INSERT [dbo].[Client] ([NumClient], [NomClient], [PrenomCient], [Cin], [Datae_Naiss], [TypeClient]) VALUES (5, N'N5', N'P3', N'C3', CAST(N'2001-01-15' AS Date), N'T3')
INSERT [dbo].[Personnel] ([Code_Personnel], [NomPersonnel], [PrenomPersonnel], [Datae_Naiss], [Login_Pers], [Password_Pers]) VALUES (1, N'N1', N'P1', CAST(N'2001-05-12' AS Date), N'a', N'z')
INSERT [dbo].[Personnel] ([Code_Personnel], [NomPersonnel], [PrenomPersonnel], [Datae_Naiss], [Login_Pers], [Password_Pers]) VALUES (2, N'N2', N'P2', CAST(N'2001-05-12' AS Date), N'a', N'z')
INSERT [dbo].[Personnel] ([Code_Personnel], [NomPersonnel], [PrenomPersonnel], [Datae_Naiss], [Login_Pers], [Password_Pers]) VALUES (3, N'N3', N'P3', CAST(N'2001-05-12' AS Date), N'a', N'z')
INSERT [dbo].[Produit] ([Reference], [Designation], [PUPro], [QteStock]) VALUES (1, N'P1', CAST(50.00 AS Decimal(10, 2)), 300)
INSERT [dbo].[Produit] ([Reference], [Designation], [PUPro], [QteStock]) VALUES (2, N'P2', CAST(70.00 AS Decimal(10, 2)), 500)
INSERT [dbo].[Produit] ([Reference], [Designation], [PUPro], [QteStock]) VALUES (3, N'P3', CAST(90.00 AS Decimal(10, 2)), 100)
INSERT [dbo].[Produit] ([Reference], [Designation], [PUPro], [QteStock]) VALUES (5, N'P55', CAST(90.00 AS Decimal(10, 2)), 200)
INSERT [dbo].[ProduitVendus] ([numVente], [reference_Pro], [QteVendus]) VALUES (1, 2, 10)
INSERT [dbo].[ProduitVendus] ([numVente], [reference_Pro], [QteVendus]) VALUES (2, 3, 20)
INSERT [dbo].[ProduitVendus] ([numVente], [reference_Pro], [QteVendus]) VALUES (3, 1, 50)
INSERT [dbo].[ProduitVendus] ([numVente], [reference_Pro], [QteVendus]) VALUES (2, 5, 140)
INSERT [dbo].[Vente] ([NumVente], [Datae_Vente], [numClient], [code_Personnel], [Paye]) VALUES (1, CAST(N'2016-05-05' AS Date), 3, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Vente] ([NumVente], [Datae_Vente], [numClient], [code_Personnel], [Paye]) VALUES (2, CAST(N'2016-05-05' AS Date), 2, 1, CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[Vente] ([NumVente], [Datae_Vente], [numClient], [code_Personnel], [Paye]) VALUES (3, CAST(N'2016-05-05' AS Date), 1, 1, CAST(500.00 AS Decimal(10, 2)))
ALTER TABLE [dbo].[Entrees]  WITH CHECK ADD  CONSTRAINT [FK_Entrees_Fournisseur] FOREIGN KEY([codeFournisseur])
REFERENCES [dbo].[Fournisseur] ([CodeFournisseur])
GO
ALTER TABLE [dbo].[Entrees] CHECK CONSTRAINT [FK_Entrees_Fournisseur]
GO
ALTER TABLE [dbo].[Entrees]  WITH CHECK ADD  CONSTRAINT [FK_Entrees_Personnel] FOREIGN KEY([code_Personnel])
REFERENCES [dbo].[Personnel] ([Code_Personnel])
GO
ALTER TABLE [dbo].[Entrees] CHECK CONSTRAINT [FK_Entrees_Personnel]
GO
ALTER TABLE [dbo].[Entrees]  WITH CHECK ADD  CONSTRAINT [FK_Entrees_Produit] FOREIGN KEY([reference_Pro])
REFERENCES [dbo].[Produit] ([Reference])
GO
ALTER TABLE [dbo].[Entrees] CHECK CONSTRAINT [FK_Entrees_Produit]
GO
ALTER TABLE [dbo].[ProduitVendus]  WITH CHECK ADD  CONSTRAINT [FK_ProduitVendus_Produit] FOREIGN KEY([reference_Pro])
REFERENCES [dbo].[Produit] ([Reference])
GO
ALTER TABLE [dbo].[ProduitVendus] CHECK CONSTRAINT [FK_ProduitVendus_Produit]
GO
ALTER TABLE [dbo].[ProduitVendus]  WITH CHECK ADD  CONSTRAINT [FK_ProduitVendus_Vente] FOREIGN KEY([numVente])
REFERENCES [dbo].[Vente] ([NumVente])
GO
ALTER TABLE [dbo].[ProduitVendus] CHECK CONSTRAINT [FK_ProduitVendus_Vente]
GO
ALTER TABLE [dbo].[Vente]  WITH CHECK ADD  CONSTRAINT [FK_Vente_Client] FOREIGN KEY([numClient])
REFERENCES [dbo].[Client] ([NumClient])
GO
ALTER TABLE [dbo].[Vente] CHECK CONSTRAINT [FK_Vente_Client]
GO
ALTER TABLE [dbo].[Vente]  WITH CHECK ADD  CONSTRAINT [FK_Vente_Personnel] FOREIGN KEY([code_Personnel])
REFERENCES [dbo].[Personnel] ([Code_Personnel])
GO
ALTER TABLE [dbo].[Vente] CHECK CONSTRAINT [FK_Vente_Personnel]
GO
