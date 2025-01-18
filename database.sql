CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    book_format VARCHAR(50),
    description TEXT,
    genre VARCHAR(255),
    img TEXT,
    isbn VARCHAR(20),
    isbn13 VARCHAR(20),
    link TEXT,
    pages INTEGER,
    rating DECIMAL(3, 2),
    reviews INTEGER,
    total_ratings INTEGER
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE reading_progress (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    book_id INTEGER REFERENCES books(id),
    status VARCHAR(50)
);

