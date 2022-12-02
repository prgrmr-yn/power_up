class AddNameToPowerbanks < ActiveRecord::Migration[7.0]
  def change
    add_column :powerbanks, :name, :string
  end
end
