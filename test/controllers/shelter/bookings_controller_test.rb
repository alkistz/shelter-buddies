require 'test_helper'

class Shelter::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shelter_bookings_index_url
    assert_response :success
  end

end
