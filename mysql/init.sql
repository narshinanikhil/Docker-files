-- devops_jobs.sql

CREATE DATABASE IF NOT EXISTS job_portal;
USE job_portal;

CREATE TABLE IF NOT EXISTS job_openings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(150) NOT NULL,
    company_name VARCHAR(150) NOT NULL,
    location VARCHAR(100),
    experience_min INT,
    experience_max INT,
    salary_min DECIMAL(12,2),
    salary_max DECIMAL(12,2),
    employment_type VARCHAR(50),
    skills VARCHAR(500),
    posted_date DATE,
    job_description TEXT
);

INSERT INTO job_openings
(job_title, company_name, location, experience_min, experience_max,
 salary_min, salary_max, employment_type, skills, posted_date, job_description)
VALUES

('DevOps Engineer',
 'TCS',
 'Bangalore',
 2, 5,
 600000, 1200000,
 'Full Time',
 'Linux,Docker,Kubernetes,Jenkins,AWS,Terraform',
 '2026-09-01',
 'Manage CI/CD pipelines, cloud infrastructure and containerized applications.'),

('Senior DevOps Engineer',
 'Infosys',
 'Hyderabad',
 4, 8,
 1000000, 2000000,
 'Full Time',
 'AWS,Kubernetes,Docker,Terraform,Ansible,Jenkins',
 '2026-09-03',
 'Design and maintain scalable cloud infrastructure and deployment pipelines.'),

('Cloud DevOps Engineer',
 'Wipro',
 'Pune',
 3, 6,
 800000, 1600000,
 'Full Time',
 'AWS,Azure,Docker,Kubernetes,Terraform,Git',
 '2026-09-05',
 'Build and maintain cloud infrastructure and automated deployment systems.'),

('DevOps Engineer',
 'Accenture',
 'Chennai',
 2, 5,
 700000, 1400000,
 'Full Time',
 'Azure,Terraform,Kubernetes,Jenkins,Python',
 '2026-09-07',
 'Implement automation and CI/CD solutions for enterprise applications.'),

('Junior DevOps Engineer',
 'Tech Mahindra',
 'Mumbai',
 0, 2,
 400000, 800000,
 'Full Time',
 'Linux,Docker,Git,Jenkins,AWS',
 '2026-09-10',
 'Support development and operations teams with CI/CD and infrastructure automation.'),

('DevOps Engineer',
 'Amazon',
 'Hyderabad',
 3, 7,
 1200000, 2500000,
 'Full Time',
 'AWS,Kubernetes,Terraform,Python,Linux,Docker',
 '2026-09-12',
 'Develop automation and infrastructure solutions for highly scalable services.'),

('Site Reliability Engineer',
 'Microsoft',
 'Bangalore',
 3, 7,
 1500000, 3000000,
 'Full Time',
 'Azure,Kubernetes,Terraform,Python,Prometheus,Grafana',
 '2026-09-15',
 'Improve reliability, monitoring and automation of production systems.'),

('DevOps Engineer',
 'Cognizant',
 'Noida',
 2, 5,
 600000, 1300000,
 'Full Time',
 'AWS,Jenkins,Docker,Ansible,Linux',
 '2026-09-17',
 'Maintain cloud infrastructure and automated deployment pipelines.');

-- View all job openings
SELECT * FROM job_openings;

-- Total number of job openings
SELECT COUNT(*) AS total_job_openings
FROM job_openings;

-- DevOps jobs only
SELECT *
FROM job_openings
WHERE job_title LIKE '%DevOps%';

-- Jobs by location
SELECT location, COUNT(*) AS total_jobs
FROM job_openings
GROUP BY location
ORDER BY total_jobs DESC;

-- Jobs requiring 3+ years experience
SELECT *
FROM job_openings
WHERE experience_min >= 3;

