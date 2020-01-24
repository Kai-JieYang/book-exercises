# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("hamburger", "coffee")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("noodle")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast=my_breakfast, lunch = my_lunch)
print(meals)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals$dinner <- c("steak","pepsi")
print(meals)

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner
print(dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[[5]] <- meals[["lunch"]]
print(meals)
# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- meals[c("breakfast", "lunch")]
print(early_meals)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
num_breakfast <- lapply(meals, FUN=length)
print(num_breakfast)
# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(pizza){
    new_pizzz <- c(pizza, "pizza")
    return(new_pizzz)
}
add_pizza(c("nachos"))
# Create a vector `better_meals` that is all your meals, but with pizza!
lapply(meals, FUN = add_pizza)
