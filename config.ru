require 'bundler'
Bundler.require
require './main'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

run Sinatra::Application