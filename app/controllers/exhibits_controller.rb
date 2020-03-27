class ExhibitsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @exhibits = Exhibit.order("created_at DESC")
    @searches = Exhibit.new
  end
  
  def new
    @exhibits = Exhibit.new
    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end

    def get_category_grandchildren
      #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
      @category_grandchildren = Category.find("#{params[:child_id]}").children
    end
  end

  def create
    Exhibit.create!(exhibit_params)
    redirect_to root_path
  end
  
  def show 
    @exhibits = Exhibit.find(params[:id])
  end

  def search
    @exhibits = Exhibit.search(params[:keyword])
  end

  
  private 
  def exhibit_params
    params.require(:exhibit).permit(:image, :name, :desc, :state, :from, :days, :price).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
