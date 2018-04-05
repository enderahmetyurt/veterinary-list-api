require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/activerecord'
require './config/environments'
require './config/cors'
require './models/veterinary'
require 'json'

before do
  content_type :json
end

get '/veterinaries' do
  Veterinary.all.to_json
end

get '/search/?:param?' do
  veterinaries = if params[:name]
                  Veterinary.where("name LIKE ?", "%#{params[:name]}%")
                elsif params[:city]
                  Veterinary.where(city: params[:city].titleize)
                elsif params[:town]
                  Veterinary.where(town: params[:town].titleize)
                end

  veterinaries.to_json
end

get '/' do
  content_type :html
  send_file './public/index.html'
end
