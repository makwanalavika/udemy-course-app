require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get display_page" do
    get welcome_display_page_url
    assert_response :success
  end

end
