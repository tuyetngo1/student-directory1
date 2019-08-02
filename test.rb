

def input_students
    puts "Please enter the names of students"
    puts "To finish, just hit the return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
      # add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
    end
    # return the array of input_students
    students
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end

  def print_under_12(students)
        students.each do |student|
          if student[:name].size <12
            puts "#{student[:name]}"
          end
        end
  end

  def print_footer(students)
  puts "Overall, we have #{students.count} great students"
  end

  students = input_students
  print_header
  print_under_12(students)
  print_footer(students)
