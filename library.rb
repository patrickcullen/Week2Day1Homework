class LibraryDetails

  attr_reader :library
  attr_writer :library

  def initialize(library)
    @library = library
  end

  # Find the book titles in the hash

  def find_books
    save_books = Array.new
    for book in @library
      save_books.push(book[:title])
    end
    return save_books
  end

  # Return rental details for supplied book title

  def return_info(book_title)
    for book in @library
      if book_title == book[:title]
        return [book[:rental_details][:student_name] + ", " + book[:rental_details][:date]]
      end
    end
  end

  # Add new book title to hash

  def add_new_book(new_book)
    @library.push({:title => new_book})
  end

  # Change the rental details for supplied book title

  def change_details(book_title, new_student, new_date)
    for book in @library
      if book_title == book[:title]
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
      end
    end
  end

end
