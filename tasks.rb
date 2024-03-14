# tasks.rb

class Main

  attr_accessor :categories

  def initialize
    @categories = {}
    @categories["Main"] = ["Take out trash", "Make reservations", "Practice Ruby coding"]
    @categories["Completed"] = []
  end

  puts "\n\n"'Welcome to Taskify!'"\n\n"

  # Run the application
  def main_menu
    loop do
      puts "\n"'---------'
      puts 'Main Menu'
      puts '---------'

      puts 'What would you like to do? (select a number)'"\n\n"
      puts '1. View'
      puts '2. Add'
      puts '3. Delete'
      puts '4. Update'
      puts '5. Exit'"\n\n"

      choice = gets.to_i 

      case choice
      when 1
        view_menu
      when 2
        add_menu
      when 3
        delete_menu
      when 4
        update_menu
      when 5
        puts "\n"'Exiting Taskify. Goodbye!'"\n\n"
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'"\n\n"
      end
    end
  end
  
  # ---------------------------------------------------- #  
  # View tasks or categories
  def view_menu
    loop do
      puts "\n"'---------'
      puts 'View Menu'
      puts '---------'

      puts 'What would you like to view? (select a number)'"\n\n"
      puts '1. All tasks & categories'
      puts '2. All categories'
      puts '3. All tasks in one category'
      puts '4. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
        view_all
        break
      when 2
        view_categories
        break
      when 3
        puts "\n"'What category would you like to see?'"\n"
        puts "Active: #{categories.keys}""\n\n"
        category = gets.chomp.downcase.capitalize
        if @categories.keys.include?(category)
          view_one_category(category)
        else
          puts "\n""#{category} doesn't exist. Please choose an existing category.""\n\n"
        end
        break
      when 4
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # ---------------------------------------------------- #
  # View tasks
  def view_all
    puts "\n"

    @categories.each do |category, tasks|
      puts "#{category.to_s.capitalize}:"
      tasks.each do |task|
        puts "  - #{task}"
      end
      puts "\n"
    end
  end

  # ---------------------------------------------------- #
  # View all categories
  def view_categories
    puts "\n"

    puts @categories.keys
  end

  # ---------------------------------------------------- #
  # View one category and its tasks
  def view_one_category(location)
    puts "\n"
    puts "#{location}:"
    categories[location].each do |main_task|
      puts "  - #{main_task}"
    end
    puts "\n"
  end

  # ---------------------------------------------------- #  
  # Add a new task or category
  def add_menu
    loop do
      puts "\n"'--------'
      puts 'Add Menu'
      puts '--------'

      puts 'What would you like to add? (select a number)'"\n\n"
      puts '1. Add task to main'
      puts '2. Add task to a category'
      puts '3. Add a new category'
      puts '4. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
        add_task
        break
      when 2
        puts "\n"'What category would you like to add to?'"\n"
        puts "#{categories.keys}""\n\n"
        category = gets.chomp.downcase.capitalize
        
        if @categories.keys.include?(category)
          add_task_cat(category)
          break
        else
          puts "\n""#{category} doesn't exist. Please choose an existing category.""\n\n"
        end
      when 3
        puts "\n"'What category would you like to add?'"\n"
        puts "Active: #{categories.keys}""\n\n"
        category = gets.chomp.downcase.capitalize
        
        if @categories.keys.include?(category)
          puts "\n""#{category} already exists. Please choose a different category name.""\n\n"
        else
          add_category(category)
          break
        end
      when 4
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # ---------------------------------------------------- #
  # Add a new task to Main
  def add_task
    puts "\n"

    task = String.new

    puts "Enter a task for Main:"
    task = gets.chomp

    categories["Main"] << task
    
    puts "\n"
    puts "Main:"
    categories["Main"].each do |main_task|
      puts "  - #{main_task}"
    end
    puts "\n"
  end

  # ---------------------------------------------------- #
  # Add a new task to a specific category
  def add_task_cat(location)
    puts "\n"

    task = String.new

    puts "Enter a task for Category: #{location}:"
    task = gets.chomp.downcase.capitalize

    categories[location] << task

    puts "\n"
    puts "#{location}:"
    categories[location].each do |main_task|
      puts "  - #{main_task}"
    end
    puts "\n"
  end

  # ---------------------------------------------------- #
  # Add a new category
  def add_category(location)
    puts "\n"

    categories.store("#{location}", [])

    puts "\n""Categories:"
    puts "#{categories.keys}"
    puts "\n"
  end

  # ---------------------------------------------------- #
  # Delete a task or category
  def delete_menu
    loop do
      puts "\n"'----------'
      puts 'Delete Menu'
      puts '----------'

      puts 'What would you like to delete? (select a number)'"\n\n"
      puts '1. Task'
      puts '2. Category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
        puts "\n"'In what category would you like to delete a task?'"\n"
        puts "#{categories.keys}""\n\n"
        category = gets.chomp.downcase.capitalize
        
        if @categories.keys.include?(category)
          delete_task(category)
          break
        else
          puts "\n""#{category} doesn't exist. Please choose an existing category.""\n\n"
        end
      when 2
        puts "\n"'What category would you like to delete?'"\n"
        puts "#{categories.keys}""\n\n"
        category = gets.chomp.downcase.capitalize
        
        if @categories.keys.include?(category)
          delete_category(category)
          break
        else
          puts "\n""#{category} doesn't exist. Please choose an existing category.""\n\n"
        end
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # ---------------------------------------------------- #
  # Delete a task
  def delete_task(location)
    puts "\n"
    puts "#{location}:"
    categories[location].each do |main_task|
      puts "  #{main_task}"
    end
    puts "\n"

    task = String.new

    puts "Enter a task for be deleted:"
    task = gets.chomp.downcase.capitalize

    categories[location].delete(task)

    puts "\n"
    puts "#{location}:"
    categories[location].each do |main_task|
      puts "  - #{main_task}"
    end
    puts "\n"
  end
  
  # ---------------------------------------------------- #  
  # Delete a category
  def delete_category(location)
    puts "\n"

    categories.delete(location)

    puts "\n""Categories:"
    puts "#{categories.keys}"
    puts "\n"
  end

  # ---------------------------------------------------- #
  # Update a task or category
  def update_menu
    loop do
      puts "\n"'----------'
      puts 'Update Menu'
      puts '-----------'

      puts 'What would you like to update? (select a number)'"\n\n"
      puts '1. Task'
      puts '2. Category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
        update_task
      when 2
        update_category
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # ---------------------------------------------------- #
  # Update a task
  def update_task

  end

  # ---------------------------------------------------- #
  # Update a category
  def update_category

  end

end
