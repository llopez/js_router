require 'test_helper'
class JsRouter::RoutesTest < ActionController::IntegrationTest
  test "should renders the correct javascript code" do
    @names = Rails.application.routes.named_routes.collect(&:first)
    get "javascripts/routes", :format => :js
    assert_response :success
    assert_equal assigns(:named_routes).collect{|x| x[:name]}, @names
    assert_kind_of YUI::JavaScriptCompressor, assigns(:compressor)
    assert_template "index"
    @names.each do |name|
      assert_match /#{name}/, response.body
    end
  end
end
