cafe1 = Cafeterium.create! name: "MAP", location: "Mary Anderson Pew Hall", open_time: "7:15am", close_time: "7:00pm"
cafe2 = Cafeterium.create! name: "Hicks", location: "Hicks Residence Hall", open_time: "10:50am", close_time: "7:00pm"

foods = %Q[ Chicken Parmesan Sandwich or Philly Steak Sub
7" Personal Pan Pizza or Garlic Bread Sticks w/ Marinara
Steak Burritos/ Black Beans/ White Rice
Grilled Chicken Salad or Grilled Veggie Salad 
Popcorn/ Chips/ Side Salad/ Hand Fruit
16oz Pepsi Fountain Drink or 8oz Milk or Fresca Water
]

foods.split("\n").each do |food|
  Meal.create! name: food, cafeterium: cafe1
end
