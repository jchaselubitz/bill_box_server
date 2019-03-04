class API::v001::WorkspacesController < ApplicationController
  before_action :find_workspace, only: [:show, :edit, :update, :toggle_status, :toggle_claim, :toggle_pinned, :destroy]

  def show

  end
  
  def create
    @workspace = Workspace.new(params[:name])
  end

  def destroy
    @workspace.destroy
    redirect_to workspaces_path
  end
  
  
  private
    def workspace_params
        params.require(:workspace).permit(:name)
    end

    def find_workspace
        @workspace = Workspace.find_by(params[:id])
    end
end
