$:.push File.dirname(__FILE__) + '/../lib'

require 'omniauth-quizlet'
require 'sinatra'
require 'json'

use Rack::Session::Cookie
use OmniAuth::Strategies::Quizlet, ENV["CLIENT_ID"], ENV["SECRET"], :scope => "read write_set write_group", :state => "RANDOM_STRING"

get '/' do
  "<a href='/auth/quizlet'>Log in with Quizlet</a>"
end

get '/auth/quizlet/callback' do
  content_type :json
  request.env['omniauth.auth'].to_json
end
