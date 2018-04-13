require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/activerecord'
require './config/environments'
require './config/cors'
require './models/veterinary'
require 'json'
require 'will_paginate'
require 'will_paginate/active_record'

before do
  content_type :json
end

get '/veterinaries' do
  Veterinary.paginate(page: params[:page], per_page: 20).to_json
end

get '/search/?:param?' do
  veterinaries = if params[:name]
                  Veterinary.where("name LIKE ?", "%#{params[:name]}%")
                elsif params[:city]
                  Veterinary.where(city: params[:city].titleize)
                elsif params[:town]
                  Veterinary.where(town: params[:town].titleize)
                end

  veterinaries.paginate(page: params[:page], per_page: 20).to_json
end

get '/' do
  content_type :html
  send_file './public/index.html'
end
