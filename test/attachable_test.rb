require 'test_helper'

class AttachableTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Attachable
  end
end
