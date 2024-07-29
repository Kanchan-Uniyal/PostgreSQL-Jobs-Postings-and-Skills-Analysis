--Ques 1: What are the top paying jobs for Data Analyst

select * from job_postings

select jp.job_id,
       jp.job_title,
       jp.job_location,
       company.name as Company_Name,
       jp.job_Posted_date,
       jp.job_schedule_type,
       jp.salary_year as salary
       from job_postings jp
left join company on company.company_id = jp.company_id
where jp.job_title_short ='Data Analyst'
and jp.salary_year is not null
order by salary_year desc
limit 10




