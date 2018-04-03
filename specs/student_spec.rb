require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Patrick", "G5")
    @student2 = Student.new("Anna", "G3")
    @student3 = Student.new("Malcolm", "G2")
  end

  def test_student_name
    assert_equal("Patrick", @student.student_name)
  end

  def test_student_cohort
    assert_equal("G5", @student.student_cohort)
  end

  def test_set_student_name
    @student.set_student_name("Alan")
    assert_equal("Alan", @student.student_name)
  end

  def test_set_student_cohort
    @student.set_student_cohort("G1")
    assert_equal("G1", @student.student_cohort)
  end

  def test_talk
    assert_equal("I can talk", @student.talk)
  end

  def test_love_language
    assert_equal("I love Ruby", @student.love_language("Ruby"))
  end
end
