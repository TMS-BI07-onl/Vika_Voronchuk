/*���� ������� ����� People. ����: ID, FirstName, ParentName, LastName,  ID_Father, ID_Mother.
��� ���� �������� �������� �� ��� � ��� �� �����.
*/


SELECT CONCAT(p.LastName,p.FirstName,p.ParentName) as ���, CONCAT(p.LastName,p.ParentName, f.ParentName) as Father_���
FROM People p
JOIN Father_Table f ON p.ID_Father= f.D_Father
WHERE p.FirstName like N"����"


/*
� ������ ,��� ��� ���� ����� ����������� � ��������� �������� ����� ����� � ��� ������� � ��� �������,���� ����� �������,��� ID_Father- ��� ��� ����,����� ����� ���������:

*/
SELECT CONCAT(LastName,FirstName,ParentName) as ���, CONCAT(LastName,ParentName, ID_Father) as Father_���
FROM People p
WHERE FirstName like N"����"
