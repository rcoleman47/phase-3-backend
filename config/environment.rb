ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# ENV['RACK_ENV'] ||= "development"

# require 'bundler/setup'
# Bundler.require(:default, ENV['RACK_ENV'])

require "sinatra/activerecord"

set :database, {adapter: "sqlite3", :database => "db/#{ENV['SINATRA_ENV']}.sqlite"}
# set :database, {adapter: "sqlite3", :database => "db/#{ENV['RACK_ENV']}.sqlite"}

require './app/controllers/application_controller'
require_all 'app'
