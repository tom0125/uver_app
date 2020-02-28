class ShopsController < ApplicationController
  def new 
    @shop = Shop.new
    @shop.reviews.build
    @cautions = Caution.all
    @shop.shop_areas.build
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_url
    else
      flash[:warining]="登録に失敗しました"
      render 'new'
    end
  end


  def index
    @shop = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

    private

    def shop_params
      params.require(:shop).permit(:name,:address,reviews_attributes:[:frequency,:attitude,:waiting_time,:comment],
                                                  shop_areas_attributes:[:area_id],caution_ids: [])
                                                                               
                                                                                
    end
end
  
  

