class Api::V001::WorkspacesController < ApplicationController
  before_action :find_workspace, only: [:show, :edit, :update, :destroy]

  def index
    @workspaces = Workspace.all 
    render json: @workspaces 
  end 

  def show
  end
  
  def create

    @workspace = Workspace.new(name: workspace_params[:name])
    @workspace.users << User.find(workspace_params[:user])
    if @workspace.valid?
      @workspace.save
     render json: @workspace
    else 
      render json: { error: "Unable to create workspace." }, status: 400
    end
  end

  def update
    if @workspace.update
     render json: @workspace
    else 
      render json: { error: "Unable to update workspace." }, status: 400
    end
  end

  def destroy
    @workspace.destroy
  end
  
  
  private
    def workspace_params
        params.require(:workspace).permit(:name, :id, :user)
    end

    def find_workspace
        @workspace = Workspace.find_by(id: params[:id])
    end
end
