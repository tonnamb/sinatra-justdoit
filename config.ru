require 'bundler'
Bundler.require
require './main'

require 'data_mapper'
DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

run Sinatra::Application