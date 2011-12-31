require 'test_helper'

# class InstituteTest < ActiveSupport::TestCase
class InstituteTest < Test::Unit::TestCase

  should have_many(:departments)

  # test "the truth" do
    # # assert true
  # end

end
