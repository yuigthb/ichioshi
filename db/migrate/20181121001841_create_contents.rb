class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :uid, :null => false
      t.integer :seq, :null => false
      t.string :title, :null => false
      t.string :text, :null => false

      t.timestamps
    end
  end
end
