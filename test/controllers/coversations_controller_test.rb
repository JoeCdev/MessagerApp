require 'test_helper'

class CoversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coversations_index_url
    assert_response :success
  end

end
