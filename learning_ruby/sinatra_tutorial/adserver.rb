require 'rubygems'
require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite://#{Dir.pwd}/adserver.db")

class Ad
  include DataMapper::Resource

  property :id,       Serial
  property :title,    String
  property :content,  Text
  property :url,      String
  property :size,     Integer
end

# Create or upgrade all tables at once, like magic
DataMapper.auto_upgrade!
