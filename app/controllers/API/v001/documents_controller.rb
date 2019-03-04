class Api::V001::DocumentsController < ApplicationController
  before_action :find_document, only: [:show, :edit, :update, :destroy]


  def index
    @documents = Document.all
    render json: @documents
  end 

  def show
    if @document
      render json: @document
    else 
      render json: { error: "Unable to find document." }, status: 400
    end
  end
  
  def create
    @document = Document.create(document_params)
    if @document.valid?
      render json: @document
    else 
      render json: { error: "Unable to create document." }, status: 400
    end
end


  def update
    @document.update(document_params)
      if @document.valid? #&& @document.image.attached?
        render json: @document
      else 
        render json: { error: "Unable to update document." }, status: 400
      end
  end

  def destroy
    if @document.destroy
      render json: @document
    else 
      render json: { error: "Unable to create document." }, status: 400
    end
  end

  {
    document: {
      name: 'bla',
      workspace_id: 2
    }
  }
  
  
  private
    def document_params
        params.require(:document).permit(:name, :workspace_id, :doctext, :paid, :deadline, :id)
    end

    def find_document
        @document = Document.find_by(id: params[:id])
    end

end
