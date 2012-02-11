# This migration comes from spree_promo (originally 20100923095305)
class UpdateCalculableTypeForPromotions < ActiveRecord::Migration
  def up
    execute "UPDATE spree_calculators SET calculable_type = 'Promotion' WHERE calculable_type = 'Coupon'"
  end

  def down
    execute "UPDATE spree_calculators SET calculable_type = 'Coupon' WHERE calculable_type = 'Promotion'"
  end
end
