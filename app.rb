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
    key = "#{key}_search".to_sym
    veterinaries = veterinaries.send(key, value) if value.present?
  end

  veterinaries.paginate(page: params[:page], per_page: 20).order(:id).to_json
end

get '/' do
  content_type :html
  send_file './public/index.html'
end

def name_search(value)
  where("name LIKE ?", "%#{value}%")
end

def city_search(value)
  where(city: value.capitalize)
end

def town_search(value)
  where(town: value.capitalize)
end

def search_params(params)
  params.slice(:name, :city, :town)
end
