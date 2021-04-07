class ApplicationController < ActionController::Base
  def hello
    render html: "hello mofmof"
  end
end
