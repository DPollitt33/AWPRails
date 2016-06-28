class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  
  def index
  end

  def catalog
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end

  def about_us
  end

  def contact_us
  end

  def privacy_policy
  end

  def terms_of_service
  end
end
