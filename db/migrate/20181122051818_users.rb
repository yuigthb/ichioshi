class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid, :null => false
      t.string :name, :null => false
      t.string :nickname, :null => false
      t.string :image, :null => false
      t.string :provider, :null => false
      #deviseヘルパーRememberable使用のため
      t.string :email, :null=> false, default: ""
      t.string :encrypted_password, :null=>false, default: ""
      t.datetime :remember_created_at

      t.timestamps
    end
    
    add_index :users, :uid,  :unique => true
  end
end
