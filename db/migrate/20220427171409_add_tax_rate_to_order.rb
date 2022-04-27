class AddTaxRateToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :tax_rate, :integer
  end
end
