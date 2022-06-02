require './config/environment'
require 'sinatra'
require 'sinatra/cross_origin'

class ApplicationController < Sinatra::Base
  set default_content_type: 'application/json'

  before do  
    headers 'Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST'],
            'Access-Control-Allow-Headers' => 'Content-Type'  
 end

  configure do
    set :sessions, true
    set :session_secret, "c8DD09k-44Rbtt6-990HHjkkl"
    set :method_override, true

    enable :cross_origin
  end
  
  set :allow_origin, :any
  set :allow_methods, [:get, :post, :patch, :delete, :options]
  set :allow_credentials, true
  set :max_age, "1728000"
  set :expose_headers, ['Content-Type']

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
   
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
   
    200
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
