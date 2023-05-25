require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store_test')

# Perform a SQL query on the database and get the result set.
# sql = 'SELECT id, title FROM books'
result = DatabaseConnection.exec_params('SELECT id, title FROM books', [])

# Print out each record from the result set .
result.each do |book|
  p book
end