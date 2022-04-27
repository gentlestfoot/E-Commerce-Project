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
      user_id: current_user.id,
      tax_rate: params[:province]
    )

    session[:cart].each do |key|
      new_order.products << Product.find(key)
    end

    session.delete(:cart)
    @order = new_order
    redirect_to order_url(new_order.id)
  end

end
