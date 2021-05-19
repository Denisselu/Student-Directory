def input_students
  puts "Please, enter the names and hobbies of the students. To finish, just hit return twice."
# Create an empty array:
  students = []
# Get the first name:
  name = gets.chomp
# Get to know their hobbies:
  hobbies = gets.chomp  
# While the name is not empty, repeat this code:
  while !name.empty? && !hobbies.empty? do
  # Add the student hash to the array:
    students << {name: name, cohort: :november, hobbies: hobbies}
    puts "Now, we have #{students.count} students."
# Get another name from the user:
    name = gets.chomp
# Get another hobbie from the user:
    hobbies = gets.chomp
end
#return the array of students:
students
end

def print_header
  puts "The Students of Villain Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, (#{student[:cohort]} cohort, (#{student[:hobbies]}))"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# Nothing happens until we call the methods:
print_header
print(students)
print_footer(students)
