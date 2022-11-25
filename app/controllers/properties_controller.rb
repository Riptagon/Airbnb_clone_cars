class PropertiesController < ApplicationController
  def index
    @properties = current_user.property.map(&:car)
  end

end
