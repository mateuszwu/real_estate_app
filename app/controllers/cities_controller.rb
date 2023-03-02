class CitiesController < ApplicationController
  before_action :set_city, only: %i[show edit update destroy]

  # GET /cities or /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1 or /cities/1.json
  def show; end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit; end

  # POST /cities or /cities.json
  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to city_url(@city), notice: 'City was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cities/1 or /cities/1.json
  def update
    if @city.update(city_params)
      redirect_to city_url(@city), notice: 'City was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /cities/1 or /cities/1.json
  def destroy
    @city.destroy

    redirect_to cities_url, notice: 'City was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_city
    @city = City.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def city_params
    params.require(:city).permit(:name)
  end
end
