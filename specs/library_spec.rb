require('minitest/autorun')
require_relative('../library.rb')

class TestLibraryDetails < MiniTest::Test

  def setup
    @library = LibraryDetails.new([
    {
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Jeff",
      date: "03/04/18"
      }
    },
      {
      title: "lord_of_the_flies",
      rental_details: {
      student_name: "Mike",
      date: "12/04/18"
      }
    },
    {
      title: "lord_of_the_rubies",
      rental_details: {
      student_name: "Pete",
      date: "17/04/18"
      }
    }
  ])

  end

  def test_find_books
    @library.find_books
    assert_equal(["lord_of_the_rings", "lord_of_the_flies", "lord_of_the_rubies"], @library.find_books)
  end

  def test_return_info
    @library.return_info("lord_of_the_flies")
    assert_equal(["Mike, 12/04/18"], @library.return_info("lord_of_the_flies"))
  end

  def test_add_new_book
    @library.add_new_book("lord_of_the_irritants")
    assert_equal(["lord_of_the_rings", "lord_of_the_flies", "lord_of_the_rubies", "lord_of_the_irritants"], @library.find_books)
  end
end
