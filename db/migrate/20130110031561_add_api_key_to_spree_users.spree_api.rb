# This migration comes from spree_api (originally 20100107141738)
class AddApiKeyToSpreeUsers < ActiveRecord::Migration
  def change
    unless defined?(User)
      add_column :spree_users, :api_key, :string, :limit => 40
    end
  end
end
