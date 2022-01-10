class CreateInventaires < ActiveRecord::Migration[7.0]
  def change
    create_table :inventaires do |t|
      t.integer :quantity
      t.integer :total
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
