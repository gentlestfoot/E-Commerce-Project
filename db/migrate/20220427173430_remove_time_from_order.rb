class RemoveTimeFromOrder < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :time, :datetime
  end
end
