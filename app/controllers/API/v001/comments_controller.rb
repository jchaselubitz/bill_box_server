class Api::V001::CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comment = Comment.all 
    render json: @comments
  end

  def show
    if @comment
      render json: @comment
    else 
      render json: { error: "Unable to find comment." }, status: 400
  end

  def create
    @comment = comment.new(comment_params)
    if @comment.valid?
      if @comment.save
        render json: @comment
      else 
        render json: { error: "Unable to create comment." }, status: 400
      end
    end
  end

  def update
    @comment.update(comment_params)
    if @comment.valid?
      render json: @comment
    else 
      render json: { error: "Unable to update comment." }, status: 400
    end
  end

  def destroy
    if @comment.destroy
      render json: { error: "Unable to delete comment." }, status: 400
  end

private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :document_id)
  end

  def find_comment
    @comment = Comment.find_by(params[:id])
  end
end

