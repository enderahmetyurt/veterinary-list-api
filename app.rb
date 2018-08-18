require 'sinatra'
require 'sinatra/cross_origin'
require 'sinatra/activerecord'
require './config/environments'
require './config/cors'
require './models/veterinary'
require 'json'
require 'will_paginate'
require 'will_paginate/active_record'

configure do
  enable :cross_origin
end

before do
  content_type :json
  response.headers['Access-Control-Allow-Origin'] = '*'
end

get '/veterinaries/?:param?' do
  per_page_data_count = params[:count] ? params[:count] : 20

  Veterinary.paginate(page: params[:page], per_page: per_page_data_count).order(:id).to_json
end

get '/search/?:param?' do
  veterinaries = Veterinary.where(nil)
  search_params(params).each do |key, value|
    veterinaries = veterinaries.public_send(key, value) if value.present?
  end

  per_page_data_count = params[:count] ? params[:count] : 20

  veterinaries = veterinaries.paginate(page: params[:page], per_page: per_page_data_count)
  veterinaries.order(:id).to_json
end

get '/' do
  content_type :html
  send_file './public/index.html'
end

def search_params(params)
  params.slice(:vet_name, :city, :town)
end
