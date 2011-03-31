require 'test_helper'
class JsRouter::RoutesTest < ActionController::IntegrationTest
  def setup
    @names = Rails.application.routes.named_routes.collect(&:first)
  end
  test "should renders the correct javascript code" do
    get "javascripts/routes", :format => :js
    assert_response :success
    assert_equal assigns(:named_routes).collect{|x| x[:name]}, @names
    assert_kind_of YUI::JavaScriptCompressor, assigns(:compressor)
    assert_template "index"
    @names.each do |name|
      assert_match /#{name.to_s.camelize(:lower)}/, response.body
    end
  end
  
  test "function calls" do
    get "javascripts/routes", :format => :js
    js = response.body
    @names.each do |name|
      assert_nothing_raised("Johnson::Error"){ Johnson.evaluate(js + "; jsRouter.#{name.to_s.camelize(:lower)}Path();") }
    end
  end
end
