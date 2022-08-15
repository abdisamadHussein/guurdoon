SELECT dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name, dbo.information.date_of_birth, dbo.information.height, dbo.information.wright, dbo.information.skin_color, dbo.information.mariage_status, dbo.information.adress_town, 
             dbo.information.education_level, dbo.ForFemale.cunto_karinta
FROM   dbo.UsersAcount INNER JOIN
             dbo.information ON dbo.UsersAcount._id = dbo.information.user_id INNER JOIN
             dbo.ForFemale ON dbo.UsersAcount._id = dbo.ForFemale.user_id   
			 WHERE (dbo.UsersAcount._id NOT IN (SELECT  dbo.[work].user_id FROM  dbo.[work]) OR dbo.UsersAcount._id IN (SELECT  dbo.[work].user_id FROM  dbo.[work]))

select * from ForChoose

SELECT * FROM UsersAcount u  inner join information i ON u._id = i.user_id INNER JOIN ForFemale f ON f.user_id = u._id
Left  JOIN ForChoose fr ON fr.user_id = u._id
WHERE u.gender = 'Dhedig'

SELECT dbo.UsersAcount._id, dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name
FROM   dbo.UsersAcount WHERE (dbo.UsersAcount._id NOT IN (SELECT  dbo.[work].user_id FROM  dbo.[work]))