#1
Alter Table countries Rename country_new;
Alter Table countries Rename country_new;

Describe country_new;

#2
Alter Table locations
Add region_id Int;

#3
Alter Table locations
Add id int first;

#4
Alter Table locations drop region_id;

Alter Table locations
Add region_id Int After state_province;

#5
Alter Table location_id
Modify country_id Int;


#6
ALTER TABLE locations
DROP city;

#7
ALTER TABLE locations
Drop state_province,
ADD state varchar (25);

Alter Table locations Rename column state To state_provience;


#8
Alter Table locations
Drop state_province,
ADD PRIMARY KEY (location_id);
ALTER TABLE location DROP PRIMARY KEY;

#9
Alter Table locations
ADD PRIMARY KEY(location_id, country_id);

#10
Alter Table locations Drop Primary key;

#11
Alter Table  job_history add foreign key (job_id) references jobs(job_id);

#12
Alter Table job_history ADD CONSTRAINT fx_job_id Foreign Key(job_id)
REFERENCES jobs(job_id) ON UPDATE RESTRICT ON DELETE CASCADE;

#13
Alter Table job_history Drop Foreign Key fx_job_id;

#14
Alter Table job_history
ADD INDEX indx_job_id(job_id);
#SHOW INDEXS FROM job_history;

#15
ALTER TABLE job_history 
DROP INDEX indx_job_id;

ALTER TABLE job_history ADD Index indx_job_title(job_title);
select * from jobs where job_title like 'A%';








