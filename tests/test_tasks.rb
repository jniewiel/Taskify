#tests/test_tasks.rb
# To run tests, enter `ruby tests/test_tasks.rb` to console.

require 'minitest/autorun'
require './tasks'

class TestTasks < Minitest::Test
  
  def setup
    @main = Main.new
  end

  def test_delete_category
    @main.delete_category("Completed")
    assert_equal 1, @main.categories.size, "Category should be deleted"
  end

  def test_add_category
    @main.add_category("test")
    assert_equal 3, @main.categories.size, "Category should be added"
  end

  def test_view_all
    assert_output(/Main:\n  - Take out trash\n  - Make reservations\n  - Practice Ruby coding\n\nCompleted:/) {@main.view_all}
  end

end
