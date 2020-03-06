# ETL-runners-project

## jaimes
`0-event-runner.py`: Use to get each runner's marathon results.

`1-get-split.py`: Use to get each runner's splits results.

`2-add-split.py`: Use to concat all split files together.

`3-concat.py`: Concatenation of results and split results info into one master file.

`import-to-sql.ipynb`: Jupyter Notebook used to clean data and upload to postgresSQL using Pandas.

`runner-results.sql`: SQL file (schema) used to import to postgresSQL.

`final-nyc-marathon-2010.csv`: Data used to manually import to postgresSQL.

## thudium
`totpop_singage_sex2010_boro.xlsx`: 2010 US Census population data based on age and NYC borough.

`extract_nyc_census.ipynb`: Jupyter Notebook to clean data and save data.

`nyc_population_table.sql`: SQL file (schema) used to import to postgresSQL.

`clean_census_data.csv`: Data used to manually import to postgresSQL.

## Steven_Q
`create-multi-index.ipynb`: Jupyter Notebook used to trasnform runner times data from strings to dataframes.

`Runner_Times_For_Join.sql`: Microsoft SQL Server file to manually import saved Runner_Times.csv data.

`runner_times_postgres.sql`: postgresSQL file to manually import saved Runner_Times.csv data.
