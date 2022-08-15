SELECT distinct LL.*,
CASE WHEN LL.Age = f.age THEN LL.age ELSE 'N/A' END AGE,
CASE WHEN LL.wright = F.wright THEN ISNULL(LL.wright,'N/A') ELSE 'N/A' END wright,
CASE WHEN LL.skin_color=F.skin_color THEN ISNULL(LL.skin_color,'N/A') ELSE 'N/A' END skin_color
FROM (
select u.first_name+' '+u.midlle_name+' '+u.last_name as Full_Name,i.Age,i.mariage_status,i.height,i.wright,i.skin_color,ff.cunto_karinta from UsersAcount u
left join information i on i.user_id =u._id
left join ForChoose f on f.user_id=u._id
left join ForFemale ff on ff.user_id=u._id
where ff.cunto_karinta is not null) AS LL
LEFT JOIN information F ON F.age=LL.age
where f.user_id=1