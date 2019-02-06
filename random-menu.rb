# taste = ["crunchy", "spicy", "sweet", "sour", "savory", "bitter", "soft", "plain", "flavorful", "chewy"]
taste = Array.new
# cook_style = ["deep-fried", "roasted", "grilled", "pan-fried", "steamed", "boiled", "confit", "stir-fried", "microwaved", "baked"]
cook_style = Array.new
# food = ["pork", "beef", "dumplings", "sturgeon", "pigeon", "chicken", "bok-choy", "rice-cake", "fish-cake", "duck"]
food = Array.new

puts "Welcome to our restaurant! How many dishes do you want today? > "
input = gets.chomp.to_i
while input > 10
  puts "We only have 10 dishes on our menu. Please enter again: > "
  input = gets.chomp.to_i
end

(0..input).each do |i|
  puts "How do you want your ##{i + 1} dish to taste? > "
  taste_item = gets.chomp
  taste << taste_item
  puts "How do you want us to cook your ##{i + 1} dish? > "
  cook_style_item = gets.chomp
  cook_style << cook_style_item
  puts "What kind of food do you want for your ##{i + 1} dish? > "
  food_item = gets.chomp
  food << food_item
end

puts "Thank you! Here are the dishes we are serving you today: "

menu = Array.new
item = 0
while true
  menu_taste = taste.sample(1).join()
  menu_cook_style = cook_style.sample(1).join()
  menu_food = food.sample(1).join()
  if menu.include?(menu_taste) || menu.include?(menu_cook_style) || menu.include?(menu_food)
    next
  end
  menu << menu_taste
  menu << menu_cook_style
  menu << menu_food
  item += 1
  puts "#{item}. #{menu_taste} #{menu_cook_style} #{menu_food}"
  if item == input
    break
  end
end
