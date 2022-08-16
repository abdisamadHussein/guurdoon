SELECT (u1.first_name +' '+ u1.midlle_name +' '+ u1.last_name) as male_full_name, u1.phone,(u2.first_name +' '+ u2.midlle_name +' '+ u2.last_name) as female_full_name,u2.phone, CONVERT(varchar(10), m.average) +'%' as average, m.result, m.date FROM Users u1   JOIN MatchingMale m on u1._id = m.male_id JOIN Users u2 on u2._id = m.female_id  WHERE m.result = 'success'   
union
SELECT (u1.first_name +' '+ u1.midlle_name +' '+ u1.last_name) as male_full_name, u1.phone,(u2.first_name +' '+ u2.midlle_name +' '+ u2.last_name) as female_full_name,u2.phone,CONVERT(varchar(10), m.average) +'%' as average , m.result, m.date FROM Users u1   JOIN MatchingFemale m on u1._id = m.male_id JOIN Users u2 on u2._id = m.female_id  WHERE m.result = 'success'   

