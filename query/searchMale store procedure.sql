Go
CREATE PROCEDURE SearchMale (
	@age_range varchar(50),
	@mariage_status varchar(50),
	@education_level varchar(50),
	@height varchar(50),
	@weight varchar(50),
	@skin_color varchar(50),
	@homework_help varchar(50),
	@user_female_id varchar(50)
)
AS 
	BEGIN
		SELECT TOP 1 male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		homework_help, MAX(TOTAL)TOTAL , CONVERT(varchar(10),SUM(TOTAL/7)) Average FROM (

		SELECT  male_user_id,female_user_id,SUM(age_range)age_range,SUM(Mariage_status)Mariage_status,
		SUM(education_level)education_level,SUM(height)height,SUM(weight) weight,SUM(skin_color)skin_color,
		SUM(homework_help)homework_help,
		SUM(age_range)+SUM(Mariage_status)+
		SUM(education_level)+SUM(height)+SUM(weight) +SUM(skin_color)+
		SUM(homework_help)TOTAL
		FROM (
		Select 
		case when @user_female_id != B.user_id then  @user_female_id  else 'N/A' end as male_user_id, 
		case when @user_female_id != B.user_id then B.user_id else 'N/A' end as female_user_id, 
		case when @age_range = B.age_range then 100 else 0 end as age_range, 
		case when @mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
		case when @education_level = B.education_level then 100 else 0 end as education_level,
		case when @height = B.height then 100 else 0 end as height,
		case when @weight = B.weight then 100 else 0 end as weight,
		case when @skin_color = B.skin_color then 100 else 0 end as skin_color,
		case when @homework_help = B.homework_help then 100 else 0 end as homework_help
		from  MaleInformation B
		join users u 
		on (u._id =  @user_female_id) 
		where u._id = @user_female_id AND ( B.user_id  NOT IN (SELECT male_id FROM MatchingStatus) AND  @user_female_id  NOT IN (SELECT female_id FROM MatchingStatus))  OR  (B.user_id  NOT IN (SELECT male_id FROM MatchingStatus) AND  @user_female_id   IN (SELECT female_id FROM MatchingStatus  WHERE result ='success')) 
		) AS LL
		GROUP BY  male_user_id,female_user_id

		) AS HH
		GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		homework_help
		ORDER BY TOTAL DESC ,  female_user_id ASC
	

	END
Go




USE [Guryosamo]
GO


-- TODO: Set parameter values here.

EXECUTE  SearchMale
   @age_range = '21-25'
  ,@mariage_status = 'Doob'
  ,@education_level = 'Bachelorsd'
  ,@height = '1.75md'
  ,@weight = '71kg-55kgd'
  ,@skin_color = 'Maaridin'
  ,@homework_help = '50d%'
  ,@user_female_id = '1030'
GO


