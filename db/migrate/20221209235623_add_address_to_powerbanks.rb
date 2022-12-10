class AddAddressToPowerbanks < ActiveRecord::Migration[7.0]
  def change
    add_column :powerbanks, :address, :string
  end
end
