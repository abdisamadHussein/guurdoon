SELECT   dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name, dbo.UsersAcount.gender, dbo.information.date_of_birth, dbo.UsersAcount.phone, dbo.UsersAcount.email_address, dbo.information.height, dbo.information.wright, dbo.information.skin_color, 
             dbo.information.mariage_status, dbo.information.adress_town, dbo.information.education_level, dbo.[work].work_place, dbo.[work].jop_title, dbo.ForMale.Kaalmada_howsha_guriga, dbo.IsRegistred.registred_date, dbo.IsPending.pending
FROM   dbo.UsersAcount INNER JOIN
             dbo.information ON dbo.UsersAcount._id = dbo.information.user_id INNER JOIN
             dbo.[work] ON dbo.UsersAcount._id = dbo.[work].user_id INNER JOIN
             dbo.ForMale ON dbo.UsersAcount._id = dbo.ForMale.user_id INNER JOIN
             dbo.IsRegistred ON dbo.UsersAcount._id = dbo.IsRegistred.user_id INNER JOIN
             dbo.IsPending ON dbo.UsersAcount._id = dbo.IsPending.user_id
---------------
select DATEDIFF(yy, date_of_birth, GETDATE()) as age  from information

-----------------------
SELECT dbo.UsersAcount._id, dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name
FROM   dbo.UsersAcount WHERE (dbo.UsersAcount._id NOT IN (SELECT  dbo.[work].user_id FROM  dbo.[work])) INNER JOIN
			dbo.information ON dbo.UsersAcount._id = dbo.information.user_id INNER JOIN
             dbo.ForMale ON dbo.UsersAcount._id = dbo.ForMale.user_id INNER JOIN
             dbo.IsRegistred ON dbo.UsersAcount._id = dbo.IsRegistred.user_id INNER JOIN
             dbo.IsPending ON dbo.UsersAcount._id = dbo.IsPending.user_id
        
	


SELECT dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name, dbo.UsersAcount.gender, dbo.information.date_of_birth, dbo.information.height, dbo.information.wright, dbo.information.skin_color, dbo.information.mariage_status, dbo.UsersAcount.phone, 
             dbo.UsersAcount.email_address, dbo.information.adress_town, dbo.information.education_level, dbo.[work].work_place, dbo.[work].jop_title, dbo.ForFemale.cunto_karinta, dbo.IsPending.pending
FROM   dbo.UsersAcount INNER JOIN
             dbo.information ON dbo.UsersAcount._id = dbo.information.user_id INNER JOIN
             dbo.[work] ON dbo.UsersAcount._id = dbo.[work].user_id INNER JOIN
             dbo.ForFemale ON dbo.UsersAcount._id = dbo.ForFemale.user_id INNER JOIN
             dbo.IsRegistred ON dbo.UsersAcount._id = dbo.IsRegistred.user_id INNER JOIN
             dbo.IsPending ON dbo.UsersAcount._id = dbo.IsPending.user_id

SELECT dbo.UsersAcount.first_name, dbo.UsersAcount.midlle_name, dbo.UsersAcount.last_name, dbo.UsersAcount.gender, dbo.information.date_of_birth, dbo.information.height, dbo.information.wright, dbo.information.skin_color, dbo.information.mariage_status, dbo.UsersAcount.phone, 
             dbo.UsersAcount.email_address, dbo.information.adress_town, dbo.information.education_level, dbo.ForFemale.cunto_karinta
FROM   dbo.UsersAcount INNER JOIN
             dbo.information ON dbo.UsersAcount._id = dbo.information.user_id INNER JOIN
		  
             dbo.ForFemale ON dbo.UsersAcount._id = dbo.ForFemale.user_id INNER JOIN
             dbo.IsRegistred ON dbo.UsersAcount._id = dbo.IsRegistred.user_id INNER JOIN
             dbo.IsPending ON dbo.UsersAcount._id = dbo.IsPending.user_id