class Book
  attr_accessor :title, :author, :year_published

  def initialize(title, author, year_published)
    @title = title
    @author = author
    @year_published = year_published
  end
end


book1 = Book.new("ААААААААА", "А. А. БББББ", 1923)


puts "Назва: #{book1.title}"
puts "Автор: #{book1.author}"
puts "Рік видання: #{book1.year_published}"


book1.year_published = 1956
puts "Новий рік видання: #{book1.year_published}"
