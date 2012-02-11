# This migration comes from spree_promo (originally 20100419190933)
class RenameCouponsToPromotions < ActiveRecord::Migration
  def up
    drop_table :promotions if table_exists?(:promotions)
    rename_table :coupons, :promotions
  end

  def down
    rename_table :promotions, :coupons
  end
end
