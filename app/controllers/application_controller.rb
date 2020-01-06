class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_current_user
  before_action :set_user,only:[:new,:index,]

def set_current_user
  @current_user = User.find_by(id: session[:user_id])
end
end