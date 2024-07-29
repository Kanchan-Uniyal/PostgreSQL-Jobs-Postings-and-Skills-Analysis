-- Create company table with primary key
CREATE TABLE public.Company
(
    Company_id INT PRIMARY KEY,
    Name TEXT,
    Link TEXT,
    Link_google TEXT,
    Thumbnail TEXT
);

-- Create skills_details table with primary key
CREATE TABLE public.Skills_details
(
    Skill_id INT PRIMARY KEY,
    Skills TEXT,
    Type TEXT
);

-- Create Job_postings table with primary key
CREATE TABLE public.Job_postings
(
    Job_id INT PRIMARY KEY,
    Company_id INT,
    Job_title_short VARCHAR(255),
    Job_title TEXT,
    Job_location TEXT,
    Job_via TEXT,
    Job_schedule_type TEXT,
    Job_work_from_home BOOLEAN,
    Search_location TEXT,
    Job_posted_date TIMESTAMP,
    Job_no_degree_mention BOOLEAN,
    Job_health_insurance BOOLEAN,
    Job_country TEXT,
    Salary_rate TEXT,
    Salary_year NUMERIC,
    Salary_hour NUMERIC,
    FOREIGN KEY (Company_id) REFERENCES public.Company (Company_id)
);

-- Create Skills_job table with a composite primary key and foreign keys
CREATE TABLE public.Skills_job
(
    Job_id INT,
    Skill_id INT,
    PRIMARY KEY (Job_id, Skill_id),
    FOREIGN KEY (Job_id) REFERENCES public.Job_postings (Job_id),
    FOREIGN KEY (Skill_id) REFERENCES public.Skills_details (Skill_id)
);

-- Set ownership of the tables to the postgres user
ALTER TABLE public.Company OWNER to postgres;
ALTER TABLE public.Skills_details OWNER to postgres;
ALTER TABLE public.Job_postings OWNER to postgres;
ALTER TABLE public.Skills_job OWNER to postgres;

-- Create indexes on foreign key columns for better performance
CREATE INDEX idx_Company_id ON public.Job_postings (Company_id);
CREATE INDEX idx_Skill_id ON public.Skills_job (Skill_id);
CREATE INDEX idx_Job_id ON public.Skills_job (Job_id);




