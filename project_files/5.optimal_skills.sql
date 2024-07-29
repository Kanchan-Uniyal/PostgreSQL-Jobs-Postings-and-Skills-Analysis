--Ques 5: What are the most optimal skills to learn for Data Analyst ( high demand and high paying)


    select 
        sd.skill_id,
        sd.skills,
        count(sd.skill_id) as skill_count,
        round(avg(jp.salary_year),0) as salary
        from skills_job sj
         INNER JOIN skills_details sd ON sd.skill_id = sj.skill_id
         INNER JOIN job_postings jp ON sj.job_id = jp.job_id
         where 
        jp.job_title_short ='Data Analyst'
        and 
        jp.salary_year is not null
        Group by 1
        having  count(sd.skill_id) >10
        ORDER BY 3 DESC, 4 DESC
        limit 20
