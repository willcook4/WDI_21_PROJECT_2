require 'test_helper'

class AughtControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aught_index_url
    assert_response :success
  end

end
