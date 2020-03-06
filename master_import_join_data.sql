-- create table for runner results data from jaimes.
-- import final-nyc-marathon-2010.csv
create table results (
	runnerid int primary key,
	firstname varchar,
	lastname varchar,
	age int,
	bib int,
	birthdate varchar,
	gender varchar,
	overallplace int,
	overalltime varchar
);

-- Created this SQL file to be able to import data to postgresSQL
-- AKA pgAdmin. Steven's other SQL file (Runner_Times_For_Join.sql) can
-- only be used with microsoftSQL from Steven_Q.
-- import Runner_Times.csv
create table runner_times (
	runnerid int,
	"5K" varchar,
	"10K" varchar,
	"15K" varchar,
	"20K" varchar,
	"25K" varchar,
	"30K" varchar,
	"35K" varchar,
	"40K" varchar
);

-- create a table for the NYC population data from thudium.
-- import clean_census_data.csv
create table census_data (
	age integer primary key,
	nyc_male integer,
	nyc_female integer,
	bronx_male integer,
	bronx_female integer,
	brooklyn_male integer,
	brooklyn_female integer,
	manhattan_male integer,
	manhattan_female integer,
	queens_male integer,
	queens_female integer,
	staten_island_male integer,
	staten_island_female integer
);

-- Join all three tables from jaimes, Steven_Q, and thudium.
select * from results
inner join runner_times on runner_times.runnerid = results.runnerid
inner join census_data on results.age = census_data.age;
