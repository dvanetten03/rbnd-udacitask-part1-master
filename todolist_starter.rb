#-----------------------------
# Udacitask Part 1
# Diane Van Etten
#-----------------------------

class TodoList
    # methods and stuff go here
    attr_reader :items

  # Initialize to-do list with a title and no items (completes rubric TodoList Class requirement)
  def initialize(list_title)
    @title = list_title
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

  # Method showing completion status of entire list (completes rubric TodoList Class requirement)
  def completed?
    return @items.all? {|item| item.completion_status == true}
  end


  def title_break
    puts "-" * 60
  end

  # Method to print todo list to command line (completes rubric TodoList Class requirement)
  def print_list 
  header = "#{@title} -- Completed: #{completed?}"
  columns = "ID" + "Priority".rjust(10) + "Item".rjust(8) + "Status".rjust(20)
    puts header
    title_break
    puts columns
    title_break
    @items.each_index do |index|
      puts "#{index} - [#{items[index].priority}]".ljust(12) + "#{items[index].description}".ljust(20) + "Completed: #{@items[index].completion_status}"
    end
  end

  # Method to print todo list to a file
  def print_to_file()
    report_file = File.open("#{@title}.txt", "w+")
    @items.each_index do |index|
      report_file.puts "#{index} - [#{items[index].priority}]" + "#{items[index].description}".ljust(20) + "Completed: #{@items[index].completion_status}"
    end
    report_file.close
  end
end

class Item
    # methods and stuff go here
    attr_reader :description, :completion_status, :priority

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

  # Method to print item
  def print_item
    puts "#{@description} is #{completion_status} with a priority of #{@priority}"
  end


end
