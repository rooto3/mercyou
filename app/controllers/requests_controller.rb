class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @requests = Request.new
  end

  def create
    Request.create(request_params)
    redirect_to requests_path
  end

  def show
    @requests = Request.find(params[:id])
  end

  private
  def request_params
    params.require(:request).permit(:item, :image, :tag, :remark, :price).merge(user_id: current_user.id)
  end
end
