class CreateFavs < ActiveRecord::Migration[5.1]
  def change
    create_table :favs do |t|
      t.integer :uid, :limit => 8
      t.integer :fav

      t.timestamps
    end
  end
end
