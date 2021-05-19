def input_students
  puts "Please, enter the names of the students: "
  puts "To finish, just hit return twice."
# Create an empty array:
  students = []
# Get the first name:
  name = gets.chomp
# While the name is not empty, repeat this code:
  while !name.empty? do
  # Add the student hash to the array:
    students << {name: name, cohort: :november}
    puts "Now, we have #{students.count} students."
# Get another name from the user:
    name = gets.chomp
end
#return the array of students:
students
end

def print_header
  puts "The Students of Villain Academy".center(50, '*')
  puts "----------------------------------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, (#{student[:cohort]} cohort)".center(50, '/')
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50, '+')
end

students = input_students
# Nothing happens until we call the methods:
print_header
print(students)
print_footer(students)
