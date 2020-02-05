require 'test_helper'

class DogtoysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dogtoys_index_url
    assert_response :success
  end

  test "should get new" do
    get dogtoys_new_url
    assert_response :success
  end

end
