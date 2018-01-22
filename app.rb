require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  'Very very nice'
  'too nice maybe'
  'is this possible?'
  'if so, it is realy really nice'
  'so it will return the very last line, which is this one :)'
end
