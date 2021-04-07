# %%

import pandas as pd
import json


# %%
credits = pd.read_csv("input/credits.csv")

# %%

metadata_dtype = {"overview": "string"}

metadata = pd.read_csv("input/movies_metadata.csv", dtype=metadata_dtype)

metadata.drop_duplicates(subset=['id'], inplace=True)

metadata.drop(labels=["belongs_to_collection", "imdb_id", "homepage", "adult", "poster_path",
              "video", "tagline", "original_title"], inplace=True, axis=1, errors="ignore")


# %%
genres = metadata.filter(['id', 'genres'], axis=1)
countries = metadata.filter(['id', 'production_counties'], axis=1)
companies = metadata.filter(['id', 'production_companies'], axis=1)
language = metadata.filter(['id', 'spoken_languages'], axis=1)


# %%
genres['json'] = [json.loads(x.replace("\'", "\"")) for x in genres['genres']]
genres['genre'] = [[genre['name'] for genre in row] for row in genres['json']]
genres.drop(labels=['json', 'genres'],inplace=True, axis=1)
df = genres.explode('genre')

df.head

# %%
metadata.to_csv('output/metadata_clean.csv', index=False)
genres.to_csv('output/genres.csv', index=False)
countries.to_csv('output/production_countries.csv', index=False)
companies.to_csv('output/production_companies.csv', index=False)
language.to_csv('output/spoken_languages.csv', index=False)


# %%
keywords = pd.read_csv("input/keywords.csv")
