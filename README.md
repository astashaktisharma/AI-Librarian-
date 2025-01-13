# AI-Powered Virtual Librarian and Personalized Reading Tracker

This repository hosts the source code for the **AI-Powered Virtual Librarian**, a web application designed to help users find books, track their reading progress, and receive personalized recommendations based on their reading habits.

---

## Features
- **Personalized Recommendations:** Tailored book suggestions based on reading history and preferences.
- **Search Functionality:** Discover books by genre, author, or "similar to" queries using Elasticsearch.
- **Reading Tracker:** Log books as "read," "to-read," or "in-progress."
- **Reading Goals:** Set and track progress toward reading goals with insights into reading speed and habits.
- **AI-Powered Analytics:** Generate insights like optimal reading times, chapter breakpoints, and genre trends.
- **Integration with External APIs:** Fetch book data from Google Books, Open Library, and Goodreads.

---

## Tech Stack

### Backend
- **Python**: Core programming language
- **FastAPI**: Web framework for building REST APIs
- **SQLAlchemy**: Database ORM for PostgreSQL
- **Redis**: In-memory data store for caching
- **Elasticsearch**: Advanced search engine for book discovery

### AI & Machine Learning
- **scikit-learn**: Machine learning library for recommendations
- **Hugging Face Transformers**: NLP and text processing
- **FastAI**: Deep learning library
- **spaCy/NLTK**: Natural language processing tools

### Frontend
- **Next.js**: Frontend framework
- **Tailwind CSS**: CSS framework for modern UI design
- **Recharts**: Visualization library for analytics

### External APIs
- **Google Books API**
- **Open Library API**
- **Goodreads API**

---

## Installation

### Prerequisites
Ensure you have the following installed:
- Python 3.8+
- PostgreSQL
- Redis
- Node.js & npm

### Backend Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ai-librarian.git
   cd ai-librarian
   ```

2. Create a virtual environment and install dependencies:
   ```bash
   python -m venv venv
   source venv/bin/activate # On Windows, use `venv\Scripts\activate`
   pip install -r requirements.txt
   ```

3. Configure environment variables in `.env` file:
   ```env
   DATABASE_URL=postgresql://user:password@localhost:5432/ai_librarian
   REDIS_URL=redis://localhost:6379/0
   ELASTICSEARCH_URL=http://localhost:9200
   GOOGLE_BOOKS_API_KEY=your_google_books_api_key
   ```

4. Initialize the database:
   ```bash
   alembic upgrade head
   ```

5. Start the FastAPI server:
   ```bash
   uvicorn app.main:app --reload
   ```

### Frontend Setup
1. Navigate to the `frontend` directory:
   ```bash
   cd frontend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Start the development server:
   ```bash
   npm run dev
   ```

---

## Usage
- Access the application at `http://localhost:3000`.
- Use the API at `http://localhost:8000/docs` for backend functionality.

---

## Roadmap
- [ ] Implement collaborative filtering for improved recommendations
- [ ] Add support for multilingual books and genres
- [ ] Integrate additional reading analytics features
- [ ] Mobile-friendly design improvements

---

## Contributing
We welcome contributions! Please follow these steps:
1. Fork the repository
2. Create a new branch (`git checkout -b feature-name`)
3. Commit your changes (`git commit -m 'Add feature-name'`)
4. Push to the branch (`git push origin feature-name`)
5. Open a Pull Request

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Acknowledgements
- [Google Books API](https://developers.google.com/books/docs/v1/getting_started)
- [Open Library API](https://openlibrary.org/developers/api)
- [Goodreads API](https://www.goodreads.com/api)

