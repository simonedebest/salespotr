class AddMerchantToUser < ActiveRecord::Migration
  def change
    add_column :users, :merchant, :boolean
  end
end
