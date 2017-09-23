create database GestPro 
Go
use GestPro
GO
create table Produit (
Reference int Constraint PK_Produit Primary Key ,
Designation varchar(100),
PUPro Decimal(10,2),
QteStock int 
)
Go 
create table Client (

NumClient int Constraint PK_NumClient primary key ,
NomClient varchar(50),
PrenomCient varchar(50),
Cin varchar(8),
Datae_Naiss date ,
TypeClient varchar(30)
)

GO 
create table Fournisseur(

CodeFournisseur int Constraint PK_Fournisseur primary key ,
RaissonSocialeFou varchar(50),
AdresseFou varchar(50),
)
GO
create table Personnel(
Code_Personnel int Constraint PK_Personnel primary key ,
NomPersonnel varchar(50),
PrenomPersonnel varchar(50),
Datae_Naiss date ,
Login_Pers varchar(20),
Password_Pers varchar(30)
)
GO
create table Vente (
NumVente int Constraint PK_Vente primary key ,
Datae_Vente date ,
numClient int constraint FK_Vente_Client foreign key(numClient) references Client(NumClient),
code_Personnel int constraint FK_Vente_Personnel foreign key(code_Personnel) references Personnel(Code_Personnel),
Paye Decimal(10,2)
)

GO
create table ProduitVendus (
numVente int constraint FK_ProduitVendus_Vente  Foreign key (numVente) references Vente(NumVente),
reference_Pro int constraint FK_ProduitVendus_Produit Foreign Key (reference_Pro) references Produit(Reference),
QteVendus int ,
)
go 
create table Entrees(
NumEntre int constraint PK_Entrees Primary key ,
DateEntre date ,
QteEntre int ,
reference_Pro int constraint FK_Entrees_Produit foreign key(reference_Pro) references Produit(Reference),
codeFournisseur int constraint FK_Entrees_Fournisseur foreign key(codeFournisseur) references Fournisseur(CodeFournisseur),
code_Personnel int constraint FK_Entrees_Personnel foreign key(code_Personnel) references Personnel(Code_Personnel),
)
Go






