
COPY Company
FROM 'D:\KANCHAN\PROJECTS\SQL Project\csv_files\Company.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY Skills_details
FROM 'D:\KANCHAN\PROJECTS\SQL Project\csv_files\Skills_details.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY Job_postings
FROM 'D:\KANCHAN\PROJECTS\SQL Project\csv_files\Job_postings.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY Skills_job
FROM 'D:\KANCHAN\PROJECTS\SQL Project\csv_files\Skills_job.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
