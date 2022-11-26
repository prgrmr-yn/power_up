class CreatePowerbanks < ActiveRecord::Migration[7.0]
  def change
    create_table :powerbanks do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.boolean :availability
      t.decimal :price
      t.string :accessories

      t.timestamps
    end
  end
end
