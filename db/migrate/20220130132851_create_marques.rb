class CreateMarques < ActiveRecord::Migration[7.0]
  def change
    create_table :marques do |t|
      t.string :marque
      t.references :article, foreign_key:true

      t.timestamps
    end
  end
end
