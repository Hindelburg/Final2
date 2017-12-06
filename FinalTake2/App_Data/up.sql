CREATE TABLE Buyer(
	id		int	IDENTITY NOT NULL,
	bName	varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE Seller(
	id		int	IDENTITY NOT NULL,
	sName	varchar(100) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE Item(
	id			int IDENTITY NOT NULL,
	iName		varchar(100) NOT NULL,
	descript	varchar(230) NOT NULL,
	sellerID	int			 NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (sellerID) REFERENCES Seller(id)
);

CREATE TABLE Bid(
	id			int IDENTITY NOT NULL,
	itemID		int			 NOT NULL,
	buyerID		int			 NOT NULL,
	price		int			 NOT NULL,
	timeOffered	datetime	 NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (buyerID) REFERENCES Buyer(id),
	FOREIGN KEY (itemID) REFERENCES Item(id)
)

INSERT INTO dbo.Buyer(bName) VALUES
	('Jane Stone'),
	('Tom McMaseters'),
	('Otto Vanderwall')
GO

INSERT INTO dbo.Seller(sName) VALUES
	('Gayle Hardy'),
	('Lyle Banks'),
	('Pearl Greene')
GO

INSERT INTO dbo.Item(iName, descript, sellerID) VALUES
	('Abraham Lincoln Hammer', 'A bench mallet fashioned from a broken rail-splitting maul in 1829 and owned by Abraham Lincoln', 3),
	('Albert Einsteins Telescope', 'A brass telescope owned by Albert Einstein in Germany, circa 1927', 1),
	('Bob Dylan Love Poems', 'Five versions of an original unpublished, handwritten, love poem by Bob Dylan', 2)
GO

INSERT INTO dbo.Bid(itemID, buyerID, price, timeOffered) VALUES
	(1, 3, 250000, '12/04/2017 09:04:22'),
	(3, 1, 95000, '12/04/2017 08:44:03')
GO