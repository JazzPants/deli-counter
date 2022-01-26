# Write your code here.
# katz_deli = ["Logan", "Avi", "Spencer"]
katz_deli = ['Ada']

def line(array)
  if array.size > 0
    newArray = []
    array.each_with_index do |customer, index|
      string = "#{index + 1}. #{customer}"

      # += "#{index + 1}. #{customer}."
      newArray.push(string)
    end
    string = "The line is currently: #{newArray.join(' ')}"
    puts string
  else
    puts 'The line is currently empty.'
  end
end

line(katz_deli)

def take_a_number(array, person)
  if array.size == 0
    array.push(person)
    puts "Welcome, #{person}. You are number #{array.index(person) + 1} in line."
  elsif array.size > 0
    newArray = array.push(person)

    # array.each_with_index do |person, index|
    # puts "Welcome, #{person}. You are number #{index + 1} in line."
    # end
    #puts newArray
    puts "Welcome, #{person}. You are number #{newArray.index(person) + 1} in line."
  end
end

# take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, 'Grace') #=> Welcome, Grace. You are number 2 in line.

def now_serving(array)
  if array.size == 0
    puts 'There is nobody waiting to be served!'
  else
    puts "Currently serving #{array[0]}."
    array.shift
  end
end
