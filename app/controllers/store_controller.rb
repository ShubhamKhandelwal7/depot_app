class StoreController < ApplicationController
  # attr_accessor :visit_counter
  include CurrentCart
  before_action :set_cart

  # @@visit_counter ||= 0
  def index
    @products = Product.order(:title)
    # p @@visit_counter
    # @@visit_counter +=1
  end
end
