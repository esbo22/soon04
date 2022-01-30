class CreateModeles < ActiveRecord::Migration[7.0]
  def change
    create_table :modeles do |t|
      t.string :modele
      t.references :article, foreign_key:true

      t.timestamps
    end
  end
end