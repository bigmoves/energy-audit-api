class AttachmentsController < ApplicationController
  # GET /attachments
  # GET /attachments.json
  def index
    @attachments = Attachment.all

    render json: @attachments
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
    @attachment = Attachment.find(params[:id])

    render json: @attachment
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(attachment_params)

    if @attachment.save
      render json: @attachment, status: :created, location: @attachment
    else
      render json: @attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attachments/1
  # PATCH/PUT /attachments/1.json
  def update
    @attachment = Attachment.find(params[:id])

    if @attachment.update(attachment_params)
      head :no_content
    else
      render json: @attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy

    head :no_content
  end

  def attachment_params
    params.require(:attachment).permit(
      :name,
      :building_id,
      :type, :size,
      :url
    )
  end
end
