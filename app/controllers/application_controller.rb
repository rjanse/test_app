class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper # Also include the helpers in all the controllers
end
