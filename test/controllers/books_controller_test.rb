require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, as: :json
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { alt_cover1: @book.alt_cover1, alt_cover2: @book.alt_cover2, alt_cover3: @book.alt_cover3, author: @book.author, cover_picture: @book.cover_picture, genre: @book.genre, intened_audience: @book.intened_audience, next_book: @book.next_book, part_of_series: @book.part_of_series, rating: @book.rating, summary: @book.summary, title: @book.title } }, as: :json
    end

    assert_response 201
  end

  test "should show book" do
    get book_url(@book), as: :json
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { alt_cover1: @book.alt_cover1, alt_cover2: @book.alt_cover2, alt_cover3: @book.alt_cover3, author: @book.author, cover_picture: @book.cover_picture, genre: @book.genre, intened_audience: @book.intened_audience, next_book: @book.next_book, part_of_series: @book.part_of_series, rating: @book.rating, summary: @book.summary, title: @book.title } }, as: :json
    assert_response 200
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book), as: :json
    end

    assert_response 204
  end
end
