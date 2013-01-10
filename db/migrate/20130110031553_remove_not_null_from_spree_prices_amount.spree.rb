# This migration comes from spree (originally 20121107003422)
class RemoveNotNullFromSpreePricesAmount < ActiveRecord::Migration
  def up
    change_column :spree_prices, :amount, :decimal, :precision => 8, :scale => 2, :null => true
  end

  def down
    change_column :spree_prices, :amount, :decimal, :precision => 8, :scale => 2, :null => false
  end
end
