--Ques 2: Top Paying jobs details by skills for Data Analyst


WITH top_paying_jobs AS(
select 
    jp.job_id,
    jp.job_title,
    jp.job_location,
    c.name as Company_Name,
    jp.job_Posted_date,
    jp.job_schedule_type,
    jp.salary_year as salary
from job_postings jp
left join company c on c.company_id = jp.company_id
where 
    jp.job_title_short ='Data Analyst'
    AND
    jp.salary_year is not null
)
select 
    tpj.*,sd.skills
from top_paying_jobs tpj
inner join skills_job sj on sj.job_id = tpj.job_id
inner JOIN skills_details sd on sd.skill_id = sj.skill_id
order by 
    salary desc
limit 10