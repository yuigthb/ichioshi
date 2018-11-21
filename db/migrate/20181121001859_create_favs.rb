class CreateFavs < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.string :uid, :null => false
      t.integer :favorite, :null => false

      t.timestamps
    end
  end
end
