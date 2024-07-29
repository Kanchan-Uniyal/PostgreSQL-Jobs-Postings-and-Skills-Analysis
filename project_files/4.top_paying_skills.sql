--Ques 4: What are the top paying skills for Data Analyst



select 
    sd.skills,
    round(avg(jp.salary_year)) as salary
    from job_postings jp
INNER JOIN skills_job sj ON sj.job_id = jp.job_id
INNER JOIN skills_details sd ON sd.skill_id = sj.skill_id
where 
    jp.job_title_short ='Data Analyst'
and 
    jp.salary_year is not null
GROUP BY 1
order by salary desc
limit 15

