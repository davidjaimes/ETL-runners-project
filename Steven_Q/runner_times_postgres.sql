-- Created this SQL file to be able to import data to postgresSQL
-- AKA pgAdmin. Steven's other SQL file (Runner_Times_For_Join.sql) can
-- only be used with microsoftSQL.
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

select * from runner_times;
