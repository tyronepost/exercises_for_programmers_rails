require 'test_helper'

class PrintingQuotesV2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get printing_quotes_v2_index_url
    assert_response :success
  end

end
