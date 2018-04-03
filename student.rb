class Student


  def initialize(student_name, student_cohort)
    @student_name = student_name
    @student_cohort = student_cohort
  end

# get student name

  def student_name()
    return @student_name
  end

  # get student cohort

  def student_cohort()
    return @student_cohort
  end

  # Update student name with new name

  def set_student_name(new_name)
    @student_name = new_name
  end

  # Update student cohort with new cohort

  def set_student_cohort(new_cohort)
    @student_cohort = new_cohort
  end

  # return "I can talk"

  def talk()
    return "I can talk"
  end

  # Return message including supplied language

  def love_language(language)
    return "I love " + language
  end
end
