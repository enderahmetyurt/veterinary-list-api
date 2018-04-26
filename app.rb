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
  Veterinary.paginate(page: params[:page], per_page: 20).order(:id).to_json
end

get '/search/?:param?' do
  veterinaries = Veterinary.where(nil)
  search_params(params).each do |key, value|
    veterinaries = veterinaries.public_send(key, value) if value.present?
  end

  veterinaries = veterinaries.paginate(page: params[:page], per_page: 20) if params[:page]
  veterinaries.order(:id).to_json
end

get '/' do
  content_type :html
  send_file './public/index.html'
end

def search_params(params)
  params.slice(:name_like, :city, :town)
end
