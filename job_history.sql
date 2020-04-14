CREATE TABLE IF NOT EXISTS job_history (
employee_id decimal(6,0) not null,
start_date date not null,
end_date date not null
CHECK (end_date LIKE '.../../....'),
job_id varchar(10) not null,
deparment_id decimal (4,0) not null
);
DESC job_history;


