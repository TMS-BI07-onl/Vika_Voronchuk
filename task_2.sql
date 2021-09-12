/*Дана таблица людей People. Поля: ID, FirstName, ParentName, LastName,  ID_Father, ID_Mother.
Для всех Дмитриев выведите их ФИО и ФИО их отцов.
*/


SELECT CONCAT(p.LastName,p.FirstName,p.ParentName) as ФИО, CONCAT(p.LastName,p.ParentName, f.ParentName) as Father_ФИО
FROM People p
JOIN Father_Table f ON p.ID_Father= f.D_Father
WHERE p.FirstName like N"Дима"


/*
Я решила ,что имя отца будет содержаться в отдельной таблицеи через джоин я его добвляю в эту таблицу,либо втрой вариант,что ID_Father- это имя отца,тогда будет следующее:

*/
SELECT CONCAT(LastName,FirstName,ParentName) as ФИО, CONCAT(LastName,ParentName, ID_Father) as Father_ФИО
FROM People p
WHERE FirstName like N"Дима"
