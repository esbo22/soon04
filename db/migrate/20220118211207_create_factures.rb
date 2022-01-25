class CreateFactures < ActiveRecord::Migration[7.0]
  def change
    create_table :factures do |t|
      t.references :client, foreign_key: true
      t.references :inventaire, foreign_key: true
      t.timestamps
    end
  end
end
