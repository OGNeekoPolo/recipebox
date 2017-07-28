class CreateFixins < ActiveRecord::Migration[5.1]
  def change
    create_table :fixins do |t|
      t.string :name
      t.string :amount
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
