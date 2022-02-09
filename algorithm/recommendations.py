from pickle import load
import difflib
import pandas as pd
import random

books_meta_data = pd.read_csv('data/books.csv')
model = load(open('model.p', 'rb'))

def get_book_id(title, metadata):
    existing_titles = list(metadata['title'].values)
    closest_titles = difflib.get_close_matches(title, existing_titles)
    book_id = metadata[metadata['title'] == closest_titles[0]]['book_id'].values[0]
    return book_id

def get_book_info(book_id, metadata):
    book_info = metadata[metadata['book_id'] == book_id][['book_id', 'isbn', 'authors', 'title', 'original_title']]
    return book_info.to_dict(orient='records')

def predict_rating(user_id, book_title, metadata):
    book_id = get_book_id(book_title, metadata)
    rating_prediction = model.predict(uid=user_id, iid=book_id)
    return rating_prediction.est

def generate_recommendations(user_id, metadata, thresh=4):
    books = []
    book_titles = list(metadata['title'].values)
    random.shuffle(book_titles)
    for book_title in book_titles:
        rating = predict_rating(user_id, book_title, metadata)
        if rating >= thresh:
            book_id = get_book_id(book_title, metadata)
            info = get_book_info(book_id, metadata)
            books.append(info)
            if len(books) >= 5:
                return books
    return books

recommendations = generate_recommendations(1000, books_meta_data)
print(recommendations)