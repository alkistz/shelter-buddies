require 'test_helper'

class Volunteer::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get volunteer_bookings_index_url
    assert_response :success
  end

end
