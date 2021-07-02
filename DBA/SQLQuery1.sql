USE SistemaGoldSeller

Create table ClienteUsuario (
	id int identity(1,1) constraint PK_Cliente primary key,
	Fname varchar(20),
	Lname varchar(20),
	Pass varchar(30),  -- password
	CPF varchar(20),
	Email varchar(50),
	Telefone varchar(20)
)


CREATE PROCEDURE sp_CadastraUsuario
	(
	 @Fname varchar(20), @Lname varchar(20), @Pass varchar(30), @CPF varchar(20), @Email varchar(50), @Telefone varchar(20)
	)
	AS BEGIN 
		Insert INTO 
		ClienteUsuario
		(Fname, Lname, Pass, CPF, Email, Telefone) 
		values
		(@Fname,@Lname,@Pass,@CPF,@Email, @Telefone)	
		END;
				
GO
drop procedure  sp_CadastraUsuario
drop table ClienteUsuario
select * from ClienteUsuario

Exec sp_CadastraUsuario @Fname = 'João', @Lname = 'Bull', @Pass = '123456789',
	@CPF = '10000000012', @Email = 'joaobull@hotmail.com', @Telefone = '(47)912124545';

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

Create table Itens (
	idItem int identity (1,1) constraint PK_item primary key,
	ItemName varchar(30),
	ItemDescricao varchar(20),
	ItemQuantidade int,
	ItemValor float
)

drop table Itens
drop procedure sp_AddItem

Create procedure sp_AddItem (@ItemName varchar(30), @ItemDescricao varchar(20),@ItemQuantidade int, @ItemValor float
	)
	as begin 
		insert INTO Itens (
		ItemName, ItemDescricao,ItemQuantidade, ItemValor)
		values 
		(@ItemName, @ItemDescricao,@ItemQuantidade, @ItemValor)
		end;
GO

Exec sp_AddItem @ItemName = 'Dofus', @ItemDescricao = 'Kamas',@ItemQuantidade = 10, @ItemValor = 120.50;
Exec sp_AddItem @ItemName = 'Tibia', @ItemDescricao = 'Tibia Coin',@ItemQuantidade = 5, @ItemValor = 55.80;
Exec sp_AddItem @ItemName = 'Black Desert', @ItemDescricao = 'Conta',@ItemQuantidade = 1, @ItemValor = 1600.50;

select * from Itens