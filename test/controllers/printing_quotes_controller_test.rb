require 'test_helper'

class PrintingQuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get printing_quotes_index_url
    assert_response :success
  end

end
