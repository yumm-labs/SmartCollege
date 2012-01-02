require 'test_helper'

class InstituteTest < ActiveSupport::TestCase

  should have_many(:departments)

  should "return its full name" do
    assert_equal 'John Doe', "John"
  end

end
