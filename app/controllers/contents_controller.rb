class ContentsController < ApplicationController

  
  def index
    @contents = Content.new
    @exhibits = Exhibit.order("created_at DESC")
  end

  def new
    @contents = Content.new
  end

  def search
    @exhibits = Exhibit.search(params[:search])
  end
end