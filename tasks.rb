# tasks.rb

class Main

  attr_accessor :main, :completed, :categories

  def initialize
    @main = []
    @completed = []
    @categories = [@main, @completed]
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
      puts '1. All tasks'
      puts '2. All categories'
      puts '3. All tasks by category'
      puts '4. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
        view_tasks
        break
      when 2
        view_categories
        break
      when 3
      when 4
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
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
      when 2
        puts "\n"'What category would you like to add to?'"\n\n"
        category = gets.chomp
        add_task_specific
      when 3
        add_category
      when 4
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
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
        delete_task
      when 2
        delete_category
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
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
  # View tasks
  def view_tasks
    puts "\n"

    @categories.each do |category|
      puts "#{category}"
    end
  end

  # ---------------------------------------------------- #
  # Add a new task to Main
  def add_task
    puts "\n"

    task = String.new

    puts 'Enter a task:'
    task = gets.chomp

    main << task

    pp main #delete later
  end

  # ---------------------------------------------------- #
  # Add a new task to a specific category
  def add_task_specific
     
  end

  # ---------------------------------------------------- #
  # Delete a task
  def delete_task
    
  end

  # ---------------------------------------------------- #  
  # Update a task
  def update_task
    
  end

  # ---------------------------------------------------- #
  # View categories
  def view_categories
    
  end

  # ---------------------------------------------------- #
  # Add a new category
  def add_category
    
  end
  
  # ---------------------------------------------------- #  
  # Delete a category
  def delete_category
    
  end
  
  # ---------------------------------------------------- #
  # Update a category
  def update_category

  end

end
