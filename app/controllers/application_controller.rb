class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  # include session helper so that all controllers and view files has access to session methods and information
end
