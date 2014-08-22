class EquipmentController < ApplicationController
  # GET /equipment
  # GET /equipment.json
  def index
    @equipment = Equipment.all

    render json: @equipment
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
    @equipment = Equipment.find(params[:id])

    render json: @equipment
  end

  # POST /equipment
  # POST /equipment.json
  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      render json: @equipment, status: :created, location: @equipment
    else
      render json: @equipment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
    @equipment = Equipment.find(params[:id])

    if @equipment.update(equipment_params)
      head :no_content
    else
      render json: @equipment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    head :no_content
  end

  def equipment_params
    params.require(:equipment).permit(
      :building_id,
      :space_id,
      :name,
      :location,
      :manufacturer,
      :size,
      :quantity,
      :model_number,
      :serial_number
    )
  end
end
