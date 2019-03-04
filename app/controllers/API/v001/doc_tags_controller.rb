class Api::V001::DocTagsController < ApplicationController
  def index
    render json: {message: 'Hello!'}
  end
end
