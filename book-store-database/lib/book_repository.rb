require_relative 'book'
class BookRepository
  def all
    sql_var = 'SELECT id, title, author_name FROM books'
    result = DatabaseConnection.exec_params(sql_var, [])

    books = []

    result.each do |name| #iterates over list of hashes
      book = Book.new
      book.id = name['id']
      book.title = name['title']
      book.author_name = name['author_name']

      books << book
    end
    return books
  end
end