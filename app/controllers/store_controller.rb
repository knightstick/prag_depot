class StoreController < ApplicationController
  include Counter
  before_action :count_visits, only: [:index]

  def index
  	@products = Product.order(:title)
  	@visit_count = session[:counter]  
  end
end
