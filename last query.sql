SELECT     male_user_id,female_user_id,age_range,Mariage_status,
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
case when '2' != B.user_id then  '2'  else 'N/A' end as male_user_id, 
case when '2' != B.user_id then B.user_id else 'N/A' end as female_user_id, 
case when'17-21' = B.age_range then 100 else 0 end as age_range, 
case when 'Gashaanti' = B.Mariage_status then 100 else 0 end as Mariage_status,
case when 'School' = B.education_level then 100 else 0 end as education_level,
case when'1.68' = B.height then 100 else 0 end as height,
case when'65' = B.weight then 100 else 0 end as weight,
case when 'Cadaan' = B.skin_color then 100 else 0 end as skin_color,
case when 'Dhaxdhaxaad' = B.cooking then 100 else 0 end as cunto_karinta,
case when 'Haa' = b.do_you_work  then 100 else 0 end as does_she_work
from  FemaleInformation B
join users u 
on (u._id=  '2') 
where u._id ='2' AND  B.user_id  NOT IN (SELECT female_id FROM MatchingStatus) AND  '2'  NOT IN (SELECT male_id FROM MatchingStatus) OR   (SELECT female_staus FROM MatchingStatus) = 'Reject'
) AS LL
GROUP BY  male_user_id,female_user_id

) AS HH
GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
education_level,height,weight,skin_color,
cunto_karinta,does_she_work
ORDER BY TOTAL DESC




