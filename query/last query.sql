

	SELECT TOP 1   male_user_id,female_user_id,age_range,Mariage_status,
	education_level,height,weight,skin_color,
	cunto_karinta,does_she_work, MAX(TOTAL)TOTAL ,  SUM(TOTAL/8) Average FROM (

	SELECT  male_user_id,female_user_id,SUM(age_range)age_range,SUM(Mariage_status)Mariage_status,
	SUM(education_level)education_level,SUM(height)height,SUM(weight) weight,SUM(skin_color)skin_color,
	SUM(cunto_karinta)cunto_karinta,SUM(does_she_work)does_she_work,

	SUM(age_range)+SUM(Mariage_status)+
	SUM(education_level)+SUM(height)+SUM(weight) +SUM(skin_color)+
	SUM(cunto_karinta)+SUM(does_she_work)TOTAL
	FROM (
	Select 
	case when A.user_id != B.user_id then  a.user_id  else 'N/A' end as male_user_id, 
	case when A.user_id != B.user_id then B.user_id else 'N/A' end as female_user_id, 
	case when A.age_range = B.age_range then 100 else 0 end as age_range, 
	case when A.Mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
	case when A.education_level = B.education_level then 100 else 0 end as education_level,
	case when A.height = B.height then 100 else 0 end as height,
	case when A.weight = B.weight then 100 else 0 end as weight,
	case when A.skin_color = B.skin_color then 100 else 0 end as skin_color,
	case when A.cooking = B.cooking then 100 else 0 end as cunto_karinta,
	case when A.does_she_work = b.do_you_work  then 100 else 0 end as does_she_work
	from MaleChoice A 
	Join FemaleInformation B
	on (A.age_range = B.age_range) or (A.Mariage_status = B.Mariage_status) or (A.education_level = B.education_level) or 
	(A.height = B.height)or (A.weight = B.weight)or (A.skin_color = B.skin_color) or (A.cooking = B.cooking) or (A.does_she_work = B.do_you_work)
	join MatchingStatus m  on m.female_id != B.user_id AND m.male_id != A.user_id Or  m.female_staus = 'reject' 
	join users u 
	on (u._id= a.user_id) 
	where a.user_id = '2'
	) AS LL
	GROUP BY  male_user_id,female_user_id
	) AS HH
	GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
	education_level,height,weight,skin_color,
	cunto_karinta,does_she_work
	ORDER BY TOTAL DESC







