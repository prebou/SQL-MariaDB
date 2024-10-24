SELECT * FROM article;
SELECT * FROM article WHERE PRIX > 2;
SELECT * FROM article WHERE PRIX > 2 AND PRIX <= 6.25;
SELECT * FROM article WHERE PRIX BETWEEN 2 AND 6.25;
SELECT * FROM article INNER JOIN fournisseur f ON article.ID_FOU = f.ID WHERE f.NOM != "Française d'Imports" AND PRIX NOT BETWEEN 2 AND 6.25;
SELECT * FROM article INNER JOIN fournisseur f ON article.ID_FOU = f.ID WHERE f.NOM = "Française d'Imports" OR f.NOM = "Dubois & Fils";
SELECT * FROM article INNER JOIN fournisseur f ON article.ID_FOU = f.ID WHERE f.NOM IN("Française d'Imports","Dubois & Fils");
SELECT * FROM article INNER JOIN fournisseur f ON article.ID_FOU = f.ID WHERE f.NOM NOT IN("Française d'Imports","Dubois & Fils");
SELECT * FROM bon WHERE DATE_CMDE BETWEEN "2019-02-01" AND "2019-04-30";