class StoreController < ApplicationController
  skip_before_action :authorize 
  # attr_accessor :visit_counter
  include CurrentCart
  before_action :set_cart

  # @@visit_counter ||= 0
  def index
    # p @@visit_counter
    # @@visit_counter +=1
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
      else
      @products = Product.order(:title)
      end
  end
end
