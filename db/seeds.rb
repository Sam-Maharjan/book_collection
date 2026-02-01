Book.destroy_all

Book.create!([
  { title: "Clean Code", author: "Robert Martin", published_date: Date.new(2008, 8, 1) },
  { title: "The Pragmatic Programmer", author: "Andrew Hunt", published_date: Date.new(1999, 10, 30) },
  { title: "Design Patterns", author: "Erich Gamma", published_date: Date.new(1994, 10, 21) },
  { title: "Refactoring", author: "Martin Fowler", published_date: Date.new(1999, 7, 8) },
  { title: "Eloquent Ruby", author: "Russ Olsen", published_date: Date.new(2011, 2, 11) },
  { title: "Programming Ruby", author: "Dave Thomas", published_date: Date.new(2000, 9, 15) },
  { title: "Ruby on Rails Tutorial", author: "Michael Hartl", published_date: Date.new(2022, 1, 1) },
  { title: "Algorithms", author: "Robert Sedgewick", published_date: Date.new(2011, 3, 19) }
])