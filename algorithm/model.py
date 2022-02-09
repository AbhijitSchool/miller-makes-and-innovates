import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from surprise import Dataset, Reader, SVD
from surprise.model_selection import cross_validate
from pickle import dump

# load data into pandas dataframe
ratings_data = pd.read_csv('data/ratings.csv')
books_meta_data = pd.read_csv('data/books.csv')

# create reader and interpret data as surprise dataset
reader = Reader(rating_scale=(1, 5))
data = Dataset.load_from_df(ratings_data[['user_id', 'book_id', 'rating']], reader)

# training
svd = SVD(verbose=True, n_epochs=1)
trainset = data.build_full_trainset()
svd.fit(trainset)

#! Save model (Very important)
dump(svd, open('model.p', 'wb'))