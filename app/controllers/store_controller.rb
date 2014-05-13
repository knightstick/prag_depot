class StoreController < ApplicationController
  include CurrentCart
  include Counter
  before_action :set_cart
  before_action :count_visits, only: [:index]

  def index
  	@products = Product.order(:title)
  	@visit_count = session[:counter]  
  end
end
