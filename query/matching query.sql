select  (aa.age_range+aa.Mariage_status+aa.education_level+aa.height+aa.weight+aa.skin_color+aa.cunto_karinta+aa.work_place)/8 as average, 
COUNT(CASE WHEN aa.age_range != 0 OR aa.Mariage_status != 0   OR aa.education_level != 0 OR aa.height != 0  OR aa.weight != 0  OR aa.skin_color != 0  OR aa.cunto_karinta != 0  OR  aa.work_place != 0  THEN 100 END 
) as tirada
From
(
Select 
case when A.user_id != B.user_id then  (select us.first_name+' '+ us.midlle_name+' '+ us.last_name from Users us WHERE us._id =A.user_id)  else 'N/A' end as MaleName, 
case when A.user_id != B.user_id then (select us.first_name+' '+ us.midlle_name+' '+ us.last_name from Users us WHERE us._id =B.user_id) else 'N/A' end as FeamleName, 
case when A.age_range = B.age_range then 100 else 0 end as age_range, 
case when A.Mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
case when A.education_level = B.education_level then 100 else 0 end as education_level,
case when A.height = B.height then 100 else 0 end as height,
case when A.weight = B.weight then 100 else 0 end as weight,
case when A.skin_color = B.skin_color then 100 else 0 end as skin_color,
case when A.cooking = B.cooking then 100 else 0 end as cunto_karinta,
case when B.work_place = 'No' then 100 else 0 end as work_place
from MaleChoice A 
Join FemaleInformation B
on (A.age_range = B.age_range) or (A.Mariage_status = B.Mariage_status) or (A.education_level = B.education_level) or 
(A.height = B.height)or (A.weight = B.weight)or (A.skin_color = B.skin_color) or (A.cooking = B.cooking) or (A.does_she_work = B.do_you_work)
join users u 
on (u._id = a.user_id) 
where A.user_id='1' ) as aa 

WHERE  ((aa.age_range+aa.Mariage_status+aa.education_level+aa.height+aa.weight+aa.skin_color+aa.cunto_karinta+aa.work_place)/8) >70



--Yes

INSERT INTO nona  (user_id_Male,user_id_Female,age_range,Mariage_status,education_level,height,weight,skin_color,cunto_karinta,work_place)
Select
case when A.user_id != B.user_id then A.user_id else 'N/A' end as user_id_Male, 
case when A.user_id != B.user_id then B.user_id else 'N/A' end as user_id_Female, 
case when A.age_range = B.age_range then A.age_range else 'N/A' end as age_range, 
case when A.Mariage_status = B.Mariage_status then A.Mariage_status else 'N/A' end as Mariage_status,
case when A.education_level = B.education_level then A.education_level else 'N/A' end as education_level,
case when A.height = B.height then A.height else 'N/A' end as height,
case when A.weight = B.weight then A.weight else 'N/A' end as weight,
case when A.skin_color = B.skin_color then A.skin_color else 'N/A' end as skin_color,
case when A.cunto_karinta = B.cunto_karinta then A.cunto_karinta else 'N/A' end as cunto_karinta,
case when B.work_place != 'No' then B.work_place else 'N/A' end as work_place
from malechoice A
Join infofemale B
on (A.age_range = B.age_range) or (A.Mariage_status = B.Mariage_status) or (A.education_level = B.education_level) or 
(A.height = B.height)or (A.weight = B.weight)or (A.skin_color = B.skin_color) or (A.cunto_karinta = B.cunto_karinta) or (A.work_place = B.work_place)
join users u 
on (u.user_id=a.user_id)

where A.user_id='5' 



--Female

Select 
case when A.user_id != B.user_id then A.user_id else 'N/A' end as user_id_Female, 
case when A.user_id != B.user_id then B.user_id else 'N/A' end as user_id_Male, 
case when A.age_range = B.age_range then A.age_range else 'N/A' end as age_range, 
case when A.Mariage_status = B.Mariage_status then A.Mariage_status else 'N/A' end as Mariage_status,
case when A.education_level = B.education_level then A.education_level else 'N/A' end as education_level,
case when A.height = B.height then A.height else 'N/A' end as height,
case when A.weight = B.weight then A.weight else 'N/A' end as weight,
case when A.skin_color = B.skin_color then A.skin_color else 'N/A' end as skin_color,
case when A.Kaalmada_howsha_guriga = B.Kaalmada_howsha_guriga then A.Kaalmada_howsha_guriga else 'N/A' end as Kaalmada_howsha_guriga,
B.work_place,B.jop_title_Nuuca_Shaqada
from femalechoice A
Join infoMale B
on (A.age_range = B.age_range) or (A.Mariage_status = B.Mariage_status) or (A.education_level = B.education_level) or 
(A.height = B.height)or (A.weight = B.weight)or (A.skin_color = B.skin_color) or (A.Kaalmada_howsha_guriga = B.Kaalmada_howsha_guriga)
join users u 
on (u.user_id=a.user_id)
where A.user_id='2' 