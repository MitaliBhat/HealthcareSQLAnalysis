use HealthcareProject;

select * from [dbo].[healthcare_dataset];

update [dbo].[healthcare_dataset] set name = lower(name);

select count(*) as " Count of Patients" from [dbo].[healthcare_dataset];

select * from [dbo].[healthcare_dataset] where blood_type = 'AB-';

select avg(Billing_Amount) as "average billing amount for age between 10 and 25" from [dbo].[healthcare_dataset] where age between 13 and 25;
select avg(Billing_Amount) as "average billing amount for age between 26 and 50" from [dbo].[healthcare_dataset] where age between 26 and 50;
select avg(Billing_Amount) as "average billing amount for age between 51 and 75" from [dbo].[healthcare_dataset] where age between 51 and 75;
select avg(Billing_Amount) as "average billing amount for age between 76 and 90" from [dbo].[healthcare_dataset] where age between 76 and 90;

select min(age) as "Min age", max(age) as "Max age" from [dbo].[healthcare_dataset];

select distinct(medical_condition) from [dbo].[healthcare_dataset];
select distinct(Doctor) from [dbo].[healthcare_dataset];
select distinct(Hospital) from [dbo].[healthcare_dataset];
select distinct(Insurance_Provider) from [dbo].[healthcare_dataset];
select distinct(Admission_Type) from [dbo].[healthcare_dataset];
select distinct(Medication) from [dbo].[healthcare_dataset];
select distinct(Test_Results) from [dbo].[healthcare_dataset];

select avg(Billing_Amount) as "average billing amount for Arthritis" from [dbo].[healthcare_dataset] where medical_condition = 'Arthritis';
select avg(Billing_Amount) as "average billing amount for Obesity" from [dbo].[healthcare_dataset] where medical_condition = 'Obesity';
select avg(Billing_Amount) as "average billing amount for Asthma" from [dbo].[healthcare_dataset] where medical_condition = 'Asthma';
select avg(Billing_Amount) as "average billing amount for Hypertension" from [dbo].[healthcare_dataset] where medical_condition = 'Hypertension';
select avg(Billing_Amount) as "average billing amount for Cancer" from [dbo].[healthcare_dataset] where medical_condition = 'Cancer';
select avg(Billing_Amount) as "average billing amount for Diabetes" from [dbo].[healthcare_dataset] where medical_condition = 'Diabetes';

select count(*) as "Count of Female" from [dbo].[healthcare_dataset] where gender = 'female';
select count(*) as "Count of Male" from [dbo].[healthcare_dataset] where gender = 'male';

select distinct(year(Date_of_Admission)) as "Distinct Year of Admissions" from [dbo].[healthcare_dataset];
select distinct(year(Discharge_Date)) as "Distinct Year of Discharge" from [dbo].[healthcare_dataset];

select count(*) from [dbo].[healthcare_dataset] where Medical_Condition = 'cancer';

select * from [dbo].[healthcare_dataset] where Admission_Type = 'emergency';

select * from [dbo].[healthcare_dataset] where year(date_of_admission) = '2019' order by name asc;

select * from [dbo].[healthcare_dataset] where name like 'aa%';

select * from [dbo].[healthcare_dataset] where name like '%i';

select * from [dbo].[healthcare_dataset] where name like 'm%i_';

select doctor, count(name) as "Count of Patients" from [dbo].[healthcare_dataset] where Test_Results = 'inconclusive' group by doctor;

SELECT name, DATEDIFF(year, Date_of_Admission, Discharge_Date) AS DateDiff from [dbo].[healthcare_dataset] order by DateDiff desc;

select distinct(billing_amount) from [dbo].[healthcare_dataset];

select name, billing_amount from [dbo].[healthcare_dataset] where Billing_Amount < 0 order by Billing_Amount asc;
select name, billing_amount from [dbo].[healthcare_dataset] where Billing_Amount > 40000 order by Billing_Amount desc;

select sum(billing_amount) as "sum of billing amount" from [dbo].[healthcare_dataset] where year(date_of_admission) = 2023;

