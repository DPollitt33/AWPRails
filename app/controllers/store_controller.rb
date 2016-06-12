class StoreController < ApplicationController
  def index
  end

  def catalog
    @products = Product.order(:title)
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
