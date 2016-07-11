require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  test "Photo should not save without external_id" do
    photo = Photo.new
    photo.search_term= "apple"
    assert_not photo.save , "Saved the photo without an external_id"
  end

  test "Photo should not save without terms" do
    photo = Photo.new
    photo.external_id= "1234567890"
    assert_not photo.save , "Saved the photo without search terms"
  end
end
