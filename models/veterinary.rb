class Veterinary < ActiveRecord::Base
  scope :name_like, -> (name) { where("lower(name) LIKE ?", "%#{name.downcase}%")}
  scope :city, -> (city) { where city: city.capitalize }
  scope :town, -> (town) { where town: town.capitalize }
end
