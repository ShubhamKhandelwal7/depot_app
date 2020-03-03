class StoreController < ApplicationController
  # attr_accessor :visit_counter

  # @@visit_counter ||= 0
  def index
    @products = Product.order(:title)
    # p @@visit_counter
    # @@visit_counter +=1
  end
end
