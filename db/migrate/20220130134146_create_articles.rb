class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :serial
      t.references :facture, foreign_key:true

      t.timestamps
    end
  end
end
