class AddOmniToUser < ActiveRecord::Migration[5.1]
  def change
    ##Omniauthable
    add_column :users, :uid, :integer
    add_column :users, :provider, :string
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :password, :string
    add_column :users, :image, :string
    add_column :users, :location , :string
    
    add_index :users, :uid,  :unique => true
    
  end
end
