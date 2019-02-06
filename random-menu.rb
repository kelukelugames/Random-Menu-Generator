# taste = ["crunchy", "spicy", "sweet", "sour", "savory", "bitter", "soft", "plain", "flavorful", "chewy"]
taste = Array.new
# cook_style = ["deep-fried", "roasted", "grilled", "pan-fried", "steamed", "boiled", "confit", "stir-fried", "microwaved", "baked"]
cook_style = Array.new
# food = ["pork", "beef", "dumplings", "sturgeon", "pigeon", "chicken", "bok-choy", "rice-cake", "fish-cake", "duck"]
food = Array.new

puts "Please enter all different tastes you want, separate them by commas: > "
taste = gets.chomp.split(",")
puts "Please enter all the cooking styles you want, separate them by commas: > "
cook_style = gets.chomp.split(",")
puts "Please enter all the food type you want, separate them by commas: > "
food = gets.chomp.split(",")

puts "Thank you! Here are the dishes we are serving you today: "

menu = Array.new
item = 0
while true
  menu_taste = taste.sample(1).join().lstrip.rstrip
  menu_cook_style = cook_style.sample(1).join().lstrip.rstrip
  menu_food = food.sample(1).join().lstrip.rstrip
  if menu.include?(menu_taste) || menu.include?(menu_cook_style) || menu.include?(menu_food)
    next
  end
  menu << menu_taste
  menu << menu_cook_style
  menu << menu_food
  item += 1
  puts "#{item}. #{menu_taste} #{menu_cook_style} #{menu_food}"
  if item == [[taste.length, cook_style.length].min, food.length].min
    break
  end
end
