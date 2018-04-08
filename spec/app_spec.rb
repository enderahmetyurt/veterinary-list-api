require_relative '../app.rb'
require 'rspec'
require 'rack/test'

set :environment, :test

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the home page" do
    get '/'
    expect(last_response.body).to eq "Veterinary List REST API"
  end

  it "should not load the home page" do
    get '/home'
    expect(last_response).to_not be_ok
  end
end