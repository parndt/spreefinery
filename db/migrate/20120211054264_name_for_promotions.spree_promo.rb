# This migration comes from spree_promo (originally 20100502163939)
class NameForPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :name, :string
  end
end
