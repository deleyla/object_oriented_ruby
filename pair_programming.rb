#Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the “p” keyword.

#1.a

favorite_food =[]

5. times do
  p "Tell me your favorite food."
  favorite_food << gets.chomp
end

p "Here are your favorite foods: #{favorite_food}"

#1.b

favorite_food =[]

5. times do
  p "Tell me your favorite food."
  favorite_food << gets.chomp
end

p "I love " + favorite_food [0] 
p "I love " + favorite_food [1] 
p "I love " + favorite_food [2] 
p "I love " + favorite_food [3] 
p "I love " + favorite_food [4] 
