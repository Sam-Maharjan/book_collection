require "rails_helper"

RSpec.describe "Books", type: :request do
  it "creates a book (sunny day) and redirects with flash notice" do
    post books_path, params: { book: { title: "Dune" } }
    expect(response).to redirect_to(books_path)
    follow_redirect!
    expect(response.body).to include("Book was successfully created.")
  end

  it "fails to create a book with blank title (rainy day)" do
    post books_path, params: { book: { title: "" } }
    expect(response).to have_http_status(:unprocessable_entity)
  end

  it "creates a book with an author" do
    post books_path, params: { book: { title: "Dune", author: "Frank Herbert" } }
    expect(Book.last.author).to eq("Frank Herbert")
  end

  it "creates a book with a price" do
    post books_path, params: { book: { title: "Dune", price: 9.99 } }
    expect(Book.last.price).to eq(9.99)
  end

  it "creates a book with a published_date" do
    post books_path, params: { book: { title: "Dune", published_date: "1965-08-01" } }
    expect(Book.last.published_date.to_s).to eq("1965-08-01")
  end
end