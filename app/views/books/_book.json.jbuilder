json.extract! book, :id, :title, :description, :pages, :year_published, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)