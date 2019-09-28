class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]
  
    def index
      @ladies_items = Item.extract_by_category(1)
      @mens_items = Item.extract_by_category(2)
      @home_appliance_items = Item.extract_by_category(3)
      @toy_items = Item.extract_by_category(4)
    end
  
    def new
    end
  
    def create
    end
  
    def search
    end
  
    def show
      other_items = Item.where.not(id: params[:id])
      @user_items = other_items.where(user_id: @item.user.id).limit(6)
      @category_items = other_items.where(category_id: @item.category.id).limit(6)
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
　　　　　item = Item.find(params[:id])
          if item.user_id == current_user.id
            @item.destroy
            # if item_user_id == current_user.id
            redirect_to mypage_listings_listing_of_items_on_sale_path
          end
    end
  end
  
  private
    
  def set_item
    @item = Item.find(params[:id])
  end