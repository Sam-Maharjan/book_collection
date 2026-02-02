require "rails_helper"

RSpec.describe Book, type: :model do
  it "has seeded books in the test database" do
    expect(Book.count).to be >= 1
    expect(Book.first.author).to be_present
    expect(Book.first.published_date).to be_present
  end
end
