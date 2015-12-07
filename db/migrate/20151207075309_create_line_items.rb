class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :fooditem, index: true, foreign_key: true
      t.integer :quantity
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
