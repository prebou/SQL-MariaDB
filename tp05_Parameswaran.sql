SELECT Designation FROM article ORDER BY Designation;
SELECT Designation, Prix FROM article ORDER BY Prix DESC;
SELECT Designation, Prix FROM article WHERE Designation LIKE '%boulon%' ORDER BY Prix ASC;
SELECT Designation, Prix FROM article WHERE Designation LIKE '%sachet%';
SELECT * FROM article INNER JOIN fournisseur ON article.Id_Fou = fournisseur.Id  ORDER BY fournisseur.Nom ASC, Prix DESC;
SELECT * FROM article INNER JOIN fournisseur ON article.Id_Fou = fournisseur.Id WHERE fournisseur.Nom = "Dubois & Fils";
SELECT AVG(Prix) FROM article INNER JOIN fournisseur ON article.Id_Fou = fournisseur.Id WHERE fournisseur.Nom = "Dubois & Fils" ;
SELECT AVG(Prix) AS "moyenne",fournisseur.Nom FROM article INNER JOIN fournisseur ON article.Id_Fou = fournisseur.Id GROUP BY fournisseur.Nom;
SELECT * FROM bon WHERE DATE_CMDE BETWEEN "2019-03-01" AND "2019-04-05 12:00";
SELECT * FROM bon INNER JOIN article ON article.ID_FOU = bon.ID_FOU  WHERE article.DESIGNATION LIKE "%boulon%";
SELECT * FROM bon INNER JOIN article ON article.ID_FOU = bon.ID_FOU INNER JOIN fournisseur ON fournisseur.ID =  article.ID_FOU WHERE article.DESIGNATION LIKE "%boulon%";
/*m*/
SELECT bon.ID, bon.DATE_CMDE, SUM(article.PRIX * compo.QTE) AS "Total/bon" FROM bon INNER JOIN article ON article.ID_FOU = bon.ID_FOU INNER JOIN fournisseur ON fournisseur.ID =  article.ID_FOU INNER JOIN compo on bon.ID = compo.ID_BON WHERE compo.ID_ART = article.ID GROUP BY bon.ID;
/*n*/
SELECT bon.ID, bon.DATE_CMDE, SUM(compo.QTE) AS "quantité total", SUM(article.PRIX * compo.QTE) AS "Total/bon" FROM bon INNER JOIN article ON article.ID_FOU = bon.ID_FOU INNER JOIN fournisseur ON fournisseur.ID =  article.ID_FOU INNER JOIN compo on bon.ID = compo.ID_BON WHERE compo.ID_ART = article.ID GROUP BY bon.ID;
/*o*/
SELECT bon.ID, bon.NUMERO, bon.DATE_CMDE, SUM(compo.QTE) AS "quantité total", SUM(article.PRIX * compo.QTE) AS "Total/bon" FROM bon INNER JOIN article ON article.ID_FOU = bon.ID_FOU INNER JOIN fournisseur ON fournisseur.ID =  article.ID_FOU INNER JOIN compo on bon.ID = compo.ID_BON WHERE compo.ID_ART = article.ID GROUP BY bon.ID HAVING SUM(compo.QTE) > 25;
/*p*/
