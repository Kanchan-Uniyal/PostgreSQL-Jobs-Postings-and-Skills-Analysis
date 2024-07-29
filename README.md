# PostgreSQL Project on Job Postings and Skills Analysis

#### Dataset Created By: Luke Barousse 
#### Tables: Job_Postings, Company, Skills_details, Skills_jobs
#### Tools: 
- SQL
- PostgreSQL
- Visual Studio Code
- Git & Github

## Summary
During Luke Barousse's SQL for Data Analytics course, I undertook a comprehensive project that delved into the data job market. By leveraging course-provided data, 
I uncovered critical insights into job titles, salary ranges, geographic trends, and the essential skills required for data analyst position. 
This project offered an in-depth analysis of current industry demands and emerging trends, equipping me with a nuanced understanding of the field.

## Questions:
1. What are the top paying jobs for Data Analyst?
2. What skills are required for the top-paying data analyst jobs?
3. What are the most in-demand skills for data analysts?
4. What are the top skills associated with higher salaries?
5. What are the most optimal skills to learn (high demand and high-paying)?

## The Analysis
Each query in this project was designed to systematically uncover crucial aspects of the data job market. Here's how I tackled each question:

## 1. What are the top paying jobs for Data Analyst?

To identify the top-paying roles, I filtered the data analyst jobs by average yearly salary for all job locations.
I limited the results to 10 in descending order by average salary. This query highlights the top 10 highest paying opportunities in data analysis.

### Query:
![1](https://github.com/user-attachments/assets/6c6acfa8-1f7e-4ea7-9a0b-a3c9ac3ea507)

### Output:
![1](https://github.com/user-attachments/assets/00296c1b-452f-424f-a324-761d0d2223f2)

### Useful Insight:
Here are some insights based on the provided job listings:

- Job Titles and Salaries:
Data Analyst roles show significant salary variation. For example, a Data Analyst at Mantys offers a high salary of 650,000.
High-level roles like Director of Safety Data Analysis and Head of Infrastructure Management & Data Analytics offer salaries around 375,000, reflecting the value of leadership in data analytics.
Senior positions such as Sr Data Analyst and HC Data Analyst, Senior in Bethesda, MD, have consistent salaries of 375,000.
The Head of Data Analytics in Austin, TX, has a salary of 350,000, slightly below other leadership roles.
Director of Analytics at Meta and Research Scientist at OpenAI have salaries of 336,500 and 285,000, respectively, highlighting competitive pay in tech giants.
- Geographic Trends:
Austin, TX appears as a key location for high-level data roles with substantial salaries, e.g., Director of Safety Data Analysis and Head of Data Analytics.
Bethesda, MD shows a strong presence of senior analyst roles with high salaries.
San Francisco, CA, known for its tech industry, offers competitive salaries for roles like Data Analyst (350,000) and Research Scientist (285,000).
- Company Presence:
Leading companies like Meta, Citigroup, Care.com, Anthropic, and OpenAI feature prominently, reflecting their investment in data analytics.
A variety of industries are represented, from robotics (Torc Robotics) and financial services (Citigroup) to social services (Care.com).
- Job Posting Dates:
The listings cover a wide range of posting dates, from February to October 2023, indicating continuous demand for data roles throughout the year.
Recent postings, such as the Head of Data Analytics at Care.com (October 23, 2023), suggest ongoing recruitment for key positions.
- Flexibility and Remote Work:
Some roles like Data Analyst and Director of Analytics list their location as "Anywhere," indicating flexibility and potential for remote work, which is increasingly valuable in today's job market.
- Job Roles Analysis:
There's a notable demand for senior and leadership positions in data analytics, reflected in higher salaries and multiple job listings for senior roles.
Companies are willing to pay premium salaries for data analyst positions, underscoring the critical role of data expertise in driving business decisions.
These insights highlight key trends in job titles, salaries, locations, and company investment in data analytics roles. They provide a snapshot of current demands and opportunities in the data job market.

ChatGPT generated these insights based on my SQL query results

## 2. What skills are required for the top-paying data analyst jobs?

To uncover the skills required for these roles, I initially created a temporary table using the first query. 
I then joined this temporary table with the skills data to retrieve the specific skills needed for each position.

### Query:
![2](https://github.com/user-attachments/assets/691024df-cae7-4e0a-a30e-b0aa132485b4)

### Output:
![2](https://github.com/user-attachments/assets/3681d855-c4c4-4ea0-9a06-078ac3ebcaa2)

### Useful Insight:
- Job Titles and Salaries:
Database Administrator roles in Belarus offer a notable salary of 400,000.
High-level positions such as Head of Infrastructure Management & Data Analytics and Director of Safety Data Analysis offer competitive salaries around 375,000.
- Geographic Trends:
Belarus features prominently for database administration roles, suggesting a regional demand for this skill set.
Jacksonville, FL, and Austin, TX, are key locations for senior roles in data analytics, with significant salaries offered.
- Company Presence:
Leading companies such as Citigroup and Torc Robotics are investing in high-level data analytics and infrastructure management roles.
The presence of ЛАНИТ in Belarus highlights local companies competing for skilled database administrators.
- Skills Analysis:
The Database Administrator role in Belarus requires diverse technical skills including Oracle, Kafka, Linux, Git, and SVN, emphasizing the need for versatile expertise.
The Head of Infrastructure Management & Data Analytics role at Citigroup requires proficiency in Excel and Word, indicating the importance of data management and documentation skills.
The Director of Safety Data Analysis role at Torc Robotics in Austin, TX, demands advanced skills in SQL, Python, and R, highlighting the need for strong analytical and programming capabilities.
- Job Posting Dates:
Job postings range from April to October 2023, indicating a steady demand for these roles throughout the year.
Recent postings, such as the Database Administrator role in Belarus (October 3, 2023), show ongoing recruitment efforts.
- Skills Relevance:
Technical skills such as Oracle, Kafka, Linux, Git, SVN for Database Administrators indicate the need for expertise in database management systems, version control, and operating systems.
Skills like Excel and Word for the Head of Infrastructure Management & Data Analytics suggest the importance of traditional data management and reporting tools even in high-level positions.
Advanced programming and statistical skills (SQL, Python, R) are crucial for the Director of Safety Data Analysis, reflecting the technical depth required for senior analytical roles.
- Role-Specific Insights:
Database Administrator roles require a broad set of technical skills, indicating a need for professionals who can manage and optimize database systems efficiently.
Senior roles in data analytics not only require technical expertise but also demand skills in data management and communication tools.
The consistent high salaries for senior roles suggest a significant value placed on experienced professionals who can lead and manage data-driven projects.

### 3. What are the most in-demand skills for data analysts?
I wanted to know more about the top 6 in-demand skills for data analysts. 
To achieve this, I used the COUNT function to calculate the demand for each skill, and ordered the results by the skill count in descending order to get the top 6 most in-demand skills.


### Query:
![3](https://github.com/user-attachments/assets/40eec5e3-f3a0-4503-9f1a-d4b588d25481)


### Output:
![3](https://github.com/user-attachments/assets/a437cc3e-2bd2-4efd-9e80-278d9872b32e)


### Useful Insight:
Based on the provided data, here's a summary of the skills and their relative frequencies:

SQL is the most prevalent skill with 92,628 mentions. This reflects its critical role in data querying and management, making it highly sought after in data-related roles.

Excel comes next with 67,031 mentions. Despite being a more traditional tool, Excel remains widely used for data analysis due to its versatility and accessibility.

Python is also highly in demand with 57,326 mentions. Its popularity is driven by its extensive libraries and frameworks for data analysis, machine learning, and automation.

Tableau has 46,554 mentions, indicating its strong position in the market for data visualization and business intelligence.

Power BI is noted with 39,468 mentions. Like Tableau, it is used for data visualization and reporting, but it is particularly popular among users of Microsoft products.

R has 30,075 mentions. Although less common than Python, R is still a significant tool for statistical analysis and data visualization.

SQL and Python are critical skills for data professionals, reflecting their foundational importance in data management and analysis.
Excel remains a staple tool despite the rise of more specialized software.
Tableau and Power BI highlight the importance of data visualization tools in communicating insights effectively.
R continues to be relevant, especially for those focused on statistical analysis.
Overall, proficiency in SQL, Python, and Excel, along with familiarity with data visualization tools like Tableau and Power BI, seems essential for data roles in the current job market.


### 4. What are the top skills associated with higher salaries?
After exploring the landscape of high-paying jobs and the skills that drive them, as well as the most sought-after skills in the job market, 
I delved deeper to pinpoint the top-paying skills specifically. To uncover this crucial information, I meticulously filtered the skills associated with data analyst roles based on their average salary. 
I then ranked these skills in descending order to reveal the top 15 highest-paying skills in the industry. 
This targeted analysis provides a clear view of which skills command the highest compensation, offering valuable insights for professionals aiming to maximize their earning potential.

### Query:
![4](https://github.com/user-attachments/assets/a567ff0e-eb56-4a3e-8167-9b0e22fa8d53)


### Output:
![4](https://github.com/user-attachments/assets/26a28435-9b1c-4acf-802c-8a960becf21e)


### Useful Insight:

Here’s a breakdown of the insights from the top-paying skills data

- Highest Paying Skill:
SVN (Subversion): With a remarkable average salary of $400,000, SVN stands out as the highest-paying skill among the top 15. This suggests a niche but highly valued expertise in version control systems.
Emerging Technologies:

- Solidity: The skill related to smart contracts on blockchain platforms commands an average salary of $179,000, reflecting the growing value of blockchain expertise.
Golang: The programming language Go, used for cloud services and distributed systems, also boasts a high salary of $155,000, indicating its importance in modern software development.
Specialized Tools:

- Couchbase & Datarobot: Both Couchbase (a NoSQL database) and Datarobot (a machine learning platform) offer high salaries ($160,515 and $155,486, respectively), pointing to the demand for advanced data management and machine learning skills.
Cloud and DevOps Skills:

- VMware, Terraform, and Puppet: Skills in virtualization and infrastructure management show strong salary figures ($147,500 for VMware, $146,734 for Terraform, and $129,820 for Puppet), underscoring the high value placed on cloud and DevOps proficiency.
Machine Learning Frameworks:

- MXNet, Keras, and PyTorch: These machine learning frameworks also feature prominently with high salaries ($149,000 for MXNet, $127,013 for Keras, and $125,226 for PyTorch), reflecting the ongoing demand for advanced machine learning skills.



### 5. What are the most optimal skills to learn (high demand and high-paying)?
Ultimately, I aimed to uncover the skills that are both most in-demand AND high-paying skills for data analyst    
My approach involved prioritizing skills based on their average salary, ensuring that high-paying roles were spotlighted. 
Subsequently, I organized the data by sorting first by average salary and then by demand count, emphasizing those roles with the highest earnings. 
To ensure relevance, I applied a filter using the HAVING clause to retain only those skills that are in substantial demand, thereby focusing on roles that are both well-compensated and sought after.


### Query:
![5](https://github.com/user-attachments/assets/f60c809f-7cf1-4516-ab37-7a34bea4ed5c)


### Output:
![5](https://github.com/user-attachments/assets/37fefa50-1e43-409a-bf57-1b8bb69317ba)


### Useful Insight:

The dataset includes a variety of skills commonly associated with data analyst roles, along with their demand (measured by skill count) and average salaries. 
This analysis will help identify which skills are both highly sought after and offer lucrative compensation.
- Highest Paying Skills:
Snowflake ($111,578): Snowflake stands out with the highest average salary among the listed skills, indicating a premium on expertise in this cloud data warehousing platform.
Spark ($113,002): Apache Spark, known for big data processing, commands a top-tier salary, reflecting its importance in handling large datasets.
Python ($101,512): As a versatile programming language for data analysis and machine learning, Python offers a competitive salary, showcasing its value in the industry.

- Most In-Demand Skills:
SQL (3,083): SQL is the most frequently mentioned skill, highlighting its fundamental role in data querying and management.
Excel (2,143): Excel remains highly demanded, emphasizing its enduring relevance in data manipulation and reporting.
Python (1,840): Python is not only high-paying but also in substantial demand, underlining its essential role in data analytics.

- Balance of Demand and Salary:
Tableau ($97,978) and Power BI ($92,324) are both highly in-demand and offer good salaries, reflecting their significance in data visualization and business intelligence.
R ($98,708) also strikes a balance between demand and salary, making it a valuable skill for statistical analysis.

- Specialized Skills:
AWS ($106,440) and Azure ($105,400): These cloud computing skills are highly valued and well-compensated, underscoring the importance of cloud services in modern data infrastructure.
Snowflake and Spark are specialized skills that command high salaries, highlighting their niche but crucial role in advanced data management and processing.

## Learning

- 🔗Joining Tables: I've mastered the art of joining tables in order to merge important info and gain useful insights from data stored across different tables.
- 💡 Complex Queries: I've learned to build some pretty complex queries filled with aggregation functions, filters, temporary tables, and more. Taking things step-by-step helped make me less intimidated by complex queries and more fascinated by their ability to retrieve exactly what I need.
- 🔎 Analytical Thinking: I've practiced my analytical thinking with every set of results retrieved from my queries. Did the results answer my question? What more is the data telling me? What limitations does the data have? Tons of questions would pop in my head when looking at the data. Using ChatGPT as a useful tool for quick insights also helped my analysis.

## Conclusion
This project significantly boosted my SQL skills and offered valuable insights into the data analyst job market. 
The results of the analysis serve as a practical guide for prioritizing skill development and focusing job search efforts.
For aspiring data analysts, this exploration underscores the importance of honing in on both high-demand and high-paying skills to better position themselves in the job market. 
It highlights the need for continuous learning and adaptation to emerging trends in data analytics, ensuring that professionals stay relevant and competitive.

