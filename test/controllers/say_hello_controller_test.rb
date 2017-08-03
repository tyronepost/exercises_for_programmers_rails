require 'test_helper'

class SayHelloControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get say_hello_new_url
    assert_response :success
  end

  test "should get show" do
    get say_hello_show_url
    assert_response :success
  end

end
