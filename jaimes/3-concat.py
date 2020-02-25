import pandas as pd
import glob as gl
import pyarrow.parquet as pq
import numpy as np
import pyarrow as pa

for year in range(1970, 2019):
    if year == 2012:
        continue
    runner = gl.glob(f'eventRunner/*{year}*')
    details = gl.glob(f'resultDetails/*{year}*')
    df1 = pd.read_csv(runner[0])
    df2 = pd.read_csv(details[0])

    colnames = list(df1.columns.values) + list(df2.columns.values)
    u, c = np.unique(colnames, return_counts=True)
    df2 = df2.drop(columns=list(u[c > 1]))
    df = pd.concat([df1, df2], axis=1)

    df = df.infer_objects()
    df.to_csv(f'nyc-marathon-{year}.csv', index=False)
