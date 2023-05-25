require 'book_repository'
RSpec.describe BookRepository do

  def reset_book_table
    sql_seed = File.read('spec/book_seeds.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(sql_seed)
  end

  before(:each) do 
    reset_book_table
  end

  it "" do
    repository = BookRepository.new

    books = repository.all

    expect(books.length).to eq(2)
    expect(books.first.id).to eq('1')
    expect(books.first.title).to eq('Lord of the Flies')

  end
end