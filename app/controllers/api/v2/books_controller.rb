class Api::V2::BooksController < ApplicationController
  def index
    render json: BookSerializer.new(Book.all)
  end
end