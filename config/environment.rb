ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do 
    set :database, 'sqlite3:db/database.db'
end
#this sets up a connection to sqlite3 database named database.db 
#can just simply change the db file name

require './app'