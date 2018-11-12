class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def check
    render html: "dep check"
  end
end
