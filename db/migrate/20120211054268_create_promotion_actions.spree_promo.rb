# This migration comes from spree_promo (originally 20110404123358)
class CreatePromotionActions < ActiveRecord::Migration
  def change
    create_table :promotion_actions do |t|
      t.integer :activator_id
      t.integer :position
      t.string  :type
    end
  end
end
