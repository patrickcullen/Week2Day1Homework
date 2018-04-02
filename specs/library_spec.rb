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

end
