class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @exhibits = user.exhibits
    @requests = user.requests
  end
end
