class SpacesController < ApplicationController
  # GET /spaces
  # GET /spaces.json
  def index
    @spaces = Space.all

    render json: @spaces
  end

  # GET /spaces/1
  # GET /spaces/1.json
  def show
    @space = Space.find(params[:id])

    render json: @space
  end

  # POST /spaces
  # POST /spaces.json
  def create
    @space = Space.new(space_params)

    if @space.save
      render json: @space, status: :created, location: @space
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spaces/1
  # PATCH/PUT /spaces/1.json
  def update
    @space = Space.find(params[:id])

    if @space.update(space_params)
      head :no_content
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    head :no_content
  end

  def space_params
    params.require(:space).permit(
      :name,
      :area,
      :building_id,
      :updated_at,
      :created_at
    )
  end
end
