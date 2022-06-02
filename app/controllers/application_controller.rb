# require './config/environment'

class ApplicationController < Sinatra::Base
  set default_content_type: 'application/json'

  configure do
    set :sessions, true
    set :session_secret, "c8DD09k-44Rbtt6-990HHjkkl"
    set :method_override, true
  end

  get "/" do
    "root route"
  end

  private

  def current_gc
    GeneralContractor.find(session[:id])
  end

  def logged_in?
    !!current_gc
  end

  def redirect_if_not_logged_in
    if !logged_in?
      flash[:error] = "You must be logged in to view"
    end
  end

end
