require "test_helper"
class JsRouter::RoutesControllerTest < ActionController::TestCase
  test "index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:named_routes)
    assert_not_nil assigns(:compressor)
  end
end
