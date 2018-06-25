require 'test_helper'

class CompanyDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get company_details_update_url
    assert_response :success
  end

end
