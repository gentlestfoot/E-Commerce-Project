class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :time
      t.integer :total_cost

      t.timestamps
    end
  end
end
