# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]




#
# print_header
# print(students)
# print_footer(students)
def input_students
    puts "Please enter the names of students"
    puts "To finish, just hit the return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while ! name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the array of input_students
    return students
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end

  # def print(students)
  #   students.each do |student|
  #     puts "#{student[:name]} (#{student[:cohort]} cohort)"
  #   end
  # end
# exercise 8-4
def print(students)
  for student in students do
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end 
# exercise 8-1 : print list with number
  def print_with_number(students)
    students.each_with_index do |student,index|
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort}) "
    end
  end

# exercise 8-2 : print the names begins with a specific letter
   def print_with_letter(students)
        students.select {|student|
        student[:name][0] == "D"
        }
   end
# exercise 8-3: print the students whose name is shorter than 12 characters
    def print_with_under_12(students)
      students.each do |student|
        if student[:name].length < 12
          puts "#{student[:name]}"
        end
      end
    end

  def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  end

  students = input_students
  print_header
  print(students)
  print_footer(students)
  print_with_number(students)
  print_with_letter(students)
  print_with_under_12(students)
