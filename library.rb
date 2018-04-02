class LibraryDetails

  attr_reader :library
  attr_writer :library

  def initialize(library)
    @library = library
  end

  def find_books
    save_books = Array.new
    for title in @Library
      save_books.push[:title]
    end
  end
end
