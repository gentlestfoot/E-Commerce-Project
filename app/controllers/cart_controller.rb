class CartController < ApplicationController
  def add
    product_id = params[:product_id]
    if session[:cart]
      if session[:cart][product_id]
        session[:cart][product_id] += 1
      else
        session[:cart][product_id] = 1
      end
    else
      session[:cart] = { params[:product_id] => 1 }
    end

    redirect_to cart_url
  end

  def checkout
    new_order = Order.create(
      user_id:    current_user.id,
      tax_rate:   params[:province],
      total_cost: 0
    )

    session[:cart].each do |key, value|
      order_product = Product.find(key)
      new_order.products << order_product
      new_order.total_cost = 50
    end

    session.delete(:cart)
    redirect_to order_url(new_order.id)
  end

end
