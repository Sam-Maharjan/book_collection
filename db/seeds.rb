Book.destroy_all

Book.create!([
  { title: "Clean Code", author: "Robert Martin", price: 35 },
  { title: "Pragmatic Programmer", author: "Andy Hunt", price: 30 },
  { title: "Eloquent Ruby", author: "Russ Olsen", price: 25 },
  { title: "Refactoring", author: "Martin Fowler", price: 40 },
  { title: "Design Patterns", author: "GoF", price: 45 }
])