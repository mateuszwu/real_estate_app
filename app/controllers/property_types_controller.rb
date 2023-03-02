class PropertyTypesController < ApplicationController
  before_action :set_property_type, only: %i[show edit update destroy]

  # GET /property_types or /property_types.json
  def index
    @property_types = PropertyType.all
  end

  # GET /property_types/1 or /property_types/1.json
  def show; end

  # GET /property_types/new
  def new
    @property_type = PropertyType.new
  end

  # GET /property_types/1/edit
  def edit; end

  # POST /property_types or /property_types.json
  def create
    @property_type = PropertyType.new(property_type_params)

    if @property_type.save
      redirect_to property_type_url(@property_type), notice: 'Property type was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /property_types/1 or /property_types/1.json
  def update
    if @property_type.update(property_type_params)
      redirect_to property_type_url(@property_type), notice: 'Property type was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /property_types/1 or /property_types/1.json
  def destroy
    @property_type.destroy

    redirect_to property_types_url, notice: 'Property type was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property_type
    @property_type = PropertyType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_type_params
    params.require(:property_type).permit(:name, :description)
  end
end
