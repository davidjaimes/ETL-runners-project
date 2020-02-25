import glob as gl
import pandas as pd

year = 2010
fnames = gl.glob("*.csv")
fnames = sorted(fnames)
for i, f in enumerate(fnames):
    df = pd.read_csv(f)
    if i == 0:
        df1 = df
    else:
        df1 = pd.concat([df1, df])
df = df1.reset_index().drop(columns=['index', 'Unnamed: 0'])
# df = df.astype({'bib': str})
df.to_csv(f'nyc-marathon-{year}-resultDetails.parquet', index=False)
