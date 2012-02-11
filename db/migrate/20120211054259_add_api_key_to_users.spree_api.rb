# This migration comes from spree_api (originally 20100107141738)
class AddApiKeyToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :api_key, :string, :limit => 40
  end
end
