class LikesController < ApplicationController
  def create
    @request = Request.find(params[:request_id])
    @request.iine(current_user)
  end

  def destroy
    @request = Like.find(params[:id]).request
    @request.uniine(current_user)
  end
end
