class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SeoKeywords
  include CustomTabNames
  include CopyrightGenerator
end
