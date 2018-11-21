class AddOmniToUser < ActiveRecord::Migration[5.1]
  def change
    ##Omniauthable
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :name, :string
    add_column :users, :nickname, :string
    add_column :users, :password, :string
    add_column :users, :image, :string
    add_column :users, :location , :string
    
    change_column :users, :uid, :string, :null => false
    change_column :users, :provider, :string, :null => false
    change_column :users, :name, :string, :null => false
    change_column :users, :nickname, :string, :null => false
    change_column :users, :password, :string, :null => false
    change_column :users, :image, :string, :null => false
    change_column :users, :location, :string, :null => false
    
    add_index :users, :uid,  :unique => true
    
  end
end
