--Ques 3: What are the Top demand skills for Data Analyst

WITH top_demand_skill AS (
    SELECT
        skill_id,
        count(*) as skill_count
        from skills_job sj
    inner JOIN job_postings on job_postings.job_id = sj.job_id
    WHERE
        job_title_short = 'Data Analyst'
    GROUP BY 1
)

SELECT 
    top_demand_skill.*,
    skills as skill_name
    from top_demand_skill
INNER JOIN skills_details sd ON sd.skill_id = top_demand_skill.skill_id
ORDER BY
    skill_count DESC
limit 6
