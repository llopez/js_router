module JsRouter
  class RoutesController < ApplicationController
    caches_page :index
    def index
      @compressor = YUI::JavaScriptCompressor.new(:munge => true)
      @named_routes = Rails.application.routes.named_routes.collect do |r|
        {:name => r.first, :params => r.last.segment_keys[0..-2], :path => r.last.path.gsub(/\(.:format\)/, '').gsub(/\(|\)/, "")}
      end
      respond_to do |format|
        format.html{ render :text => "I am your Engine!"}
        format.js
      end
    end
  end
end
