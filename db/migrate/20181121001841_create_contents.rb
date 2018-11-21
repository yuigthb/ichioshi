class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.integer :uid, :limit => 8
      t.integer :seq
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
