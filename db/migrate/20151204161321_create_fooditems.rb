class CreateFooditems < ActiveRecord::Migration
  def change
    create_table :fooditems do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :img_url
      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
