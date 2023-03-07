class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @properties = Property.all
  end
end
