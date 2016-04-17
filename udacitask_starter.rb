require_relative 'todolist_starter.rb'


# Creates a new todo list
list = TodoList.new("Diane's List")

# Add four new items with priorities
list.add_item("Study", 1)
list.add_item("Grocery Shop", 3)
list.add_item("Straighten House", 4)
list.add_item("Pay Rent", 1)

# Print the list
list.print_list

# Print the list to a file (new feature)
list.print_to_file

# Delete the first item
list.remove_item(0)

# Print the list
list.print_list

# Delete the second item
list.remove_item(2)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.toggle_status(0)

# Print the list
list.print_list

# Update the title of the list
list.rename("Mom's List")

# Print the list
list.print_list


