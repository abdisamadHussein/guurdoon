USE [Guryosamo]
GO
/****** Object:  StoredProcedure [dbo].[SearchFemale]    Script Date: 1/12/2022 10:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SearchFemale] (
	@age_range varchar(50),
	@mariage_status varchar(50),
	@education_level varchar(50),
	@height varchar(50),
	@weight varchar(50),
	@skin_color varchar(50),
	@cooking varchar(50),
	@does_she_work varchar(50),
	@user_male_id varchar(50)
)
AS 
	BEGIN
		SELECT TOP 1 male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		cunto_karinta,does_she_work, MAX(TOTAL)TOTAL , CONVERT(varchar(10),SUM(TOTAL/8)) Average FROM (

		SELECT  male_user_id,female_user_id,SUM(age_range)age_range,SUM(Mariage_status)Mariage_status,
		SUM(education_level)education_level,SUM(height)height,SUM(weight) weight,SUM(skin_color)skin_color,
		SUM(cunto_karinta)cunto_karinta,SUM(does_she_work)does_she_work,

		SUM(age_range)+SUM(Mariage_status)+
		SUM(education_level)+SUM(height)+SUM(weight) +SUM(skin_color)+
		SUM(cunto_karinta)+SUM(does_she_work)TOTAL
		FROM (
		Select 
		case when @user_male_id != B.user_id then  @user_male_id  else 'N/A' end as male_user_id, 
		case when @user_male_id != B.user_id then B.user_id else 'N/A' end as female_user_id, 
		case when @age_range = B.age_range then 100 else 0 end as age_range, 
		case when @mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
		case when @education_level = B.education_level then 100 else 0 end as education_level,
		case when @height = B.height then 100 else 0 end as height,
		case when @weight = B.weight then 100 else 0 end as weight,
		case when @skin_color = B.skin_color then 100 else 0 end as skin_color,
		case when @cooking = B.cooking then 100 else 0 end as cunto_karinta,
		case when @does_she_work = b.do_you_work  then 100 else 0 end as does_she_work
		from  FemaleInformation B
		join users u 
		on (u._id =  @user_male_id) 
		where u._id = @user_male_id AND ( B.user_id  NOT IN (SELECT female_id FROM MatchingStatus) AND  @user_male_id  NOT IN (SELECT male_id FROM MatchingStatus))  OR  (B.user_id  NOT IN (SELECT female_id FROM MatchingStatus) AND  @user_male_id   IN (SELECT male_id FROM MatchingStatus  WHERE result ='success')) 
		) AS LL
		GROUP BY  male_user_id,female_user_id

		) AS HH
		GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		cunto_karinta,does_she_work
		ORDER BY TOTAL DESC ,  female_user_id ASC
	

	END


	-- TODO: Set parameter values here.
	EXECUTE  SearchFemale
   @age_range = '21-25'
  ,@mariage_status = 'Doob'
  ,@education_level = 'Bachelor'
  ,@height = '1.65m'
  ,@weight = '71kg-55kg'
  ,@skin_color = 'Maariin'
  ,@cooking =''
  ,@does_she_work = ''
 ,@user_male_id = '2'
GO
