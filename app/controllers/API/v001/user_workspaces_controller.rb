class Api::V001::UserWorkspacesController < ApplicationController

  def index
    @userWorkspaces = UserWorkspace.all
  end

  def create
    @userWorkspace = UserWorkspace.new(userWorkspace_params)
    if @userWorkspace.valid?
      @userWorkspace.save
     render json: @userWorkspace
    else 
      render json: { error: "Unable to create user workspace." }, status: 400
    end
  end

 
  def destroy
    @userWorkspace.find_by(id: params[:id])
    @userWorkspace.destroy
  end
  
  
  private
    def userWorkspace_params
      
        params.require(:user_workspace).permit(:id, :user_id, :workspace_id)
    end
end
