# tasks.rb

class Tasks
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Run the application
  def main_menu
    loop do
      puts "\n\n"'Welcome to Taskify!'"\n\n"
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

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # View tasks or categories
  def view_menu
    loop do
      puts "\n\n"'What would you like to view? (select a number)'"\n\n"
      puts '1. All tasks'
      puts '2. All categories'
      puts '3. All tasks by category'
      puts '4. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
      when 3
      when 4
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Add a new task or category
  def add_menu
    loop do
      puts "\n"'What would you like to add? (select a number)'"\n\n"
      puts '1. Task'
      puts '2. Category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Delete a task or category
  def delete_menu
    loop do
      puts "\n"'What would you like to delete? (select a number)'"\n\n"
      puts '1. Task'
      puts '2. Category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Update a task or category
  def update_menu
    loop do
      puts "\n"'What would you like to update? (select a number)'"\n\n"
      puts '1. Task'
      puts '2. Category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
      when 3
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

=begin
  
  # -------------------------------------------------------------------------------------------------------------------------------- #
  # View categories
  def view_category
    loop do
      puts "\n"'What would you like to view? (select a number)'"\n\n"
      puts '1. All categories'
      puts '2. All tasks by category'
      puts '3. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
      when 3
        main_menu
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Add a new category
  def add_category
    loop do
      puts "\n"'What would you like to add? (select a number)'"\n\n"
      puts '1. Category'
      puts '2. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
        main_menu
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end
  
  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Delete a category
  def delete_category
    loop do
      puts "\n"'What would you like to delete? (select a number)'"\n\n"
      puts '1. Category'
      puts '2. Return to main menu'"\n\n"

      choice = gets.chomp.to_i

      case choice
      when 1
      when 2
        main_menu
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end
  
  # -------------------------------------------------------------------------------------------------------------------------------- #
  # Update a category
  def update_category
    loop do
      puts "\n"'What would you like to update? (select a number)'"\n\n"
      puts '1. Category'
      puts '2. Return to main menu'"\n\n"

      case choice
      when 1
      when 2
        main_menu
        break
      else
        puts "\n"'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end

=end

end
