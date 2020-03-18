class Exhibits::SearchesController < ApplicationController
  def index
    @exhibits = Exhibit.search(params[:keyword])
  end
end
