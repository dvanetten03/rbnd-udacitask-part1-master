#-----------------------------
# Udacitask Part 1
# Diane Van Etten
#-----------------------------


class TodoList
    # methods and stuff go here
    attr_accessor :title, :items, :user

  # Initialize to-do list with a title and no items (completes rubric TodoList Class requirement)
  def initialize(list_title, user)
    @title = list_title
    @user = user
    @items = Array.new
  end

  # Method to rename list (completes rubric TodoList Class requirement)
  def rename(list_title)
    @title = list_title
  end

  # Method to add items to list (completes rubric TodoList Class requirement)
  def add_item(new_item, priority=4)
    item = Item.new(new_item, priority)
    @items << item
  end

  # Method to delete items from list (completes rubric TodoList Class requirement)
  def remove_item(index)
    @items.delete_at(index)
    puts "Item ##{index} has been removed from the list."
  end

  # Method to update the completion status of an item on the list (completes rubric TodoList Class requirement)
  def toggle_status(index)
    @items[index].toggle_status
  end

  # Method showing completion status (completes rubric TodoList Class requirement)
  def completed?
    return @items.all? {|item| item.completion_status == true}
  end

  def list_break
    puts "-" * 45
  end

  # def item_break
  #   puts " " * 20
  # end

  # Method to print todo list (completes rubric TodoList Class requirement)
  def print_list 
  header = "#{@title} -- Completed: #{completed?}"
    list_break
    puts header
    list_break
    @items.each_index {|index| puts "#{index} - [#{items[index].priority}]" + "#{items[index].description}".ljust(20) + "Completed: #{@items[index].completion_status}"}
  end
end

class Item
    # methods and stuff go here
    attr_accessor :description, :completion_status, :priority

  # Initialize item with a description and marked as not complete (completes rubric Item Class requirement)
  def initialize(item_description, priority)
    @description = item_description
    @completion_status = false
    @priority = priority
  end

  # Method to update completion status of an item (completes rubric Item Class requirement)
  def toggle_status
    @completion_status = !@completion_status
  end


  # Method that prints items (completes rubric Item Class requirement)
  def print_item
    puts "#{@description} Completed: #{@completion_status} Priority: #{@priority}"
  end
end
