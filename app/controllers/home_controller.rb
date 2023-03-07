class HomeController < ApplicationController
  def show
    @properties = Property.all
  end
end
