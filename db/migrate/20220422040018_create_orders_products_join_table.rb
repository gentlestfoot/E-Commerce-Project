class CreateOrdersProductsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :orders, :products
  end
end
