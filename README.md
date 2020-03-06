# ETL-runners-project

## Directory: jaimes
`0-event-runner.py`: Use to get each runner's marathon results.

`1-get-split.py`: Use to get each runner's splits results.

`2-add-split.py`: Use to concat all split files together.

`3-concat.py`: Concatenation of results and split results info into one master file.

`import-to-sql.ipynb`: Jupyter Notebook used to clean data and upload to postgresSQL using Pandas.

`runner-results.sql`: SQL file (schema) used to import to postgresSQL.
