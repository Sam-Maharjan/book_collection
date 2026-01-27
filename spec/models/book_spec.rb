require "rails_helper"

RSpec.describe Book, type: :model do
  it "is invalid without a title" do
    book = Book.new(title: "")
    expect(book).not_to be_valid
  end

  it "is valid with a title" do
    book = Book.new(title: "Dune")
    expect(book).to be_valid
  end

  it "is valid with an author" do
    book = Book.new(title: "Dune", author: "Frank Herbert")
    expect(book).to be_valid
  end

  it "is valid with a price" do
    book = Book.new(title: "Dune", price: 9.99)
    expect(book).to be_valid
  end

  it "is valid with a published_date" do
    book = Book.new(title: "Dune", published_date: Date.new(1965, 8, 1))
    expect(book).to be_valid
  end
end