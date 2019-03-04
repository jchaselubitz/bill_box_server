class Api::V001::TagsController < ApplicationController
  before_action :find_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all 
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.valid?
      @tag.save
    end
  end

  def update
    @tag.update(tag_params)
    if @tag.valid?
      redirect_to tags_path
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def find_tag
    @tag = Tag.find_by(params[:id])
  end
end
