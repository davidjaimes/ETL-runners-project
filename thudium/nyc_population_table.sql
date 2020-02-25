-- create a table for the NYC population data
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