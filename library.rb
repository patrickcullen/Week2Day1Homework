class LibraryDetails

  attr_reader :library
  attr_writer :library

  def initialize(library)
    @library = library
  end

  def find_books
    save_books = Array.new
    for book in @library
      save_books.push(book[:title])
    end
    return save_books
  end

  def return_info(book_title)
    for book in @library
      if book_title == book[:title]
        return [book[:rental_details][:student_name] + ", " + book[:rental_details][:date]]
      end
    end
  end

  def add_new_book(new_book)
    @library[:title].push(new_book)
  end
end
