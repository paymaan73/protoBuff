# frozen_string_literal: true

require 'books_services_pb'


# Purpose: Service to handle books actions
class BookService < Books::BookService::Service
  def get_books(_request, _call)
    books = Book.all.as_json(only: [:id, :title])
    Books::Books.new(books: books)
  end

  def get_book(request, _call)
    books = Book.all.as_json(only: [:id, :title])
    book = books.find { |b| b['id'] == request.id }
    raise GRPC::NotFound, 'Book not found' if book.nil?

    Books::Book.new(book)
  end

  end
