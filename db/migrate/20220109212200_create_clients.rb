class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :adresse
      t.integer :codepostal
      t.string :ville
      t.string :contact
      t.integer :telephone
      t.string :email
      t.string :referent
      t.integer :telreferent

      t.timestamps
    end
  end
end
