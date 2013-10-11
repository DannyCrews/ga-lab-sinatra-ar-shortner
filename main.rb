require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'sinatra/activerecord'

set :database, {adapter: 'postgresql',
								database: 'urlshorten_db',
								host: 'localhost'}


class Url < ActiveRecord::Base
  has_many :comments
end 

class Comment < ActiveRecord::Base
  belongs_to :urls
end 

# get '/' do
# 	@stories = Story.all
# 	erb :front_page
# end