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

  def remove
    if session[:cart]

    end
  end
end
