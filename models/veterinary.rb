class Veterinary < ActiveRecord::Base
  def self.get_list(params)
    if params[:name]
        self.where("name LIKE ?", "%#{params[:name]}%")
      elsif params[:city]
        self.where(city: params[:city].capitalize)
      elsif params[:town]
        self.where(town: params[:town].capitalize)
    end
  end
end