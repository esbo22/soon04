class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :categorie
      t.references :article, foreign_key:true

      t.timestamps
    end
  end
end
