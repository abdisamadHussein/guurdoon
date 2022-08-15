/****** Script for SelectTopNRows command from SSMS  ******/
SELECT MaleName,  FeamleName,   AVG([age_range]+[Mariage_status]+[education_level]+[height]+[weight]+[skin_color]+[cunto_karinta]+[work_place])/8 as average
  FROM  dbo.nano 
   GROUP  BY MaleName,  FeamleName 