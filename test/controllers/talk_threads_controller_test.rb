require 'test_helper'

class TalkThreadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get talk_threads_new_url
    assert_response :success
  end

  test "should get show" do
    get talk_threads_show_url
    assert_response :success
  end

end
