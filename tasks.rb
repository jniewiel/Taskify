# tasks.rb

class Tasks
  attr_accessor :tasks

  def initialize
    @tasks = []
    puts 'Welcome to Taskify!'
  end

  def run
    loop do
      puts 'What would you like to do? (select a number)'
      puts '1. View'
      puts '2. Add'
      puts '3. Delete'
      puts '4. Update'
      puts '5. Exit'

      choice = gets.chomp.to_i

      case choice
      when 1
        view_task
        view_category
      when 2
        add_task
        add_category
      when 3
        delete_task
        delete_category
      when 4
        update_task
        update_category
      when 5
        puts 'Exiting Taskify. Goodbye!'
        break
      else
        puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
      end
    end
  end


  def view_task
    puts 'What would you like to view? (select a number)'
    puts '1. All tasks'
    puts '2. All categories'
    puts '3. All tasks by category'
    puts '4. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    when 3
    when 4
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def add_task
    puts 'What would you like to add? (select a number)'
    puts '1. Task'
    puts '2. Category'
    puts '3. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    when 3
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def delete_task
    puts 'What would you like to delete? (select a number)'
    puts '1. Task'
    puts '2. Category'
    puts '3. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    when 3
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def update_task
    puts 'What would you like to update? (select a number)'
    puts '1. Task'
    puts '2. Category'
    puts '3. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    when 3
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def view_category
    puts 'What would you like to view? (select a number)'
    puts '1. All categories'
    puts '2. All tasks by category'
    puts '3. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    when 3
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def add_category
    puts 'What would you like to add? (select a number)'
    puts '1. Category'
    puts '2. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def delete_category
    puts 'What would you like to delete? (select a number)'
    puts '1. Category'
    puts '2. Exit'

    choice = gets.chomp.to_i

    case choice
    when 1
    when 2
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end

  def update_category
    puts 'What would you like to update? (select a number)'
    puts '1. Category'
    puts '2. Exit'

    case choice
    when 1
    when 2
    else
      puts 'Invalid option. Please choose a valid option (select one of the numbers provided).'
    end
  end


end
