create table compo(Id int auto_increment primary key, Qte int, Id_art int, constraint Id_art foreign key(Id_art) references article(id),Id_bon int, constraint Id_bon foreign key(Id_bon) references bon(id));

INSERT INTO fournisseur (Nom) VALUES ('Française d’Imports'),('FDM SA'),('Dubois & Fils');


INSERT INTO article (Ref, Designation, Prix, Id_Fou) VALUES ('A01', 'Perceuse P1', '74.99', '1'),
('F01','Boulon laiton 4 x 40 mm (sachet de 10)', '2.25','2'),
('F02', 'Boulon laiton 5 x 40 mm (sachet de 10)','4.45','2'),
('D01','Boulon laiton 5 x 40 mm (sachet de 10)','4.40','3'),
('A02','Meuleuse 125mm','37.85','1'),
('D03','Boulon acier zingué 4 x 40mm (sachet de 10)','1.8','3'),
('A03','Perceuse à colonne','185.25','1'),
('D04','Coffret mêches à bois','12.25','3'),
('F03','Coffret mêches plates','6.25','2'),
('F04','Fraises d’encastrement','8.14','2'); 

INSERT INTO bon (Numero, Date_cmde, Delai, Id_asso) VALUES ('1', current_timestamp(), '3', '1');

INSERT INTO compo (Qte, Id_art,Id_bon) VALUES ('3','1','1'),('4','5','1'),('1', '7','1');