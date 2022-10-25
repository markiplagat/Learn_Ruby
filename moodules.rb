def grading_students(grades)
  student_grades = []

  grades.each do |grade|
    if grade > 37 && grade % 5 <= 3
      grade += grade while grade % 5 != 0
      puts grade
      student_grades << grade
    elsif grade > 30 && grade < 38
      student_grades << grade
    end
  end
  puts student_grades
  # Write your code here
end
grades = [4, 28, 73, 68]
grading_students(grades)
