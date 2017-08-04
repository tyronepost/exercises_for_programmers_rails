require 'test_helper'

class CountingCharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get counting_characters_index_url
    assert_response :success
  end

end
