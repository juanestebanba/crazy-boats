require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get categories_controller_url
    assert_response :success
  end
end
