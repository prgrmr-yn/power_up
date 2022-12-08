class AddCoordinatesToPowerbanks < ActiveRecord::Migration[7.0]
  def change
    add_column :powerbanks, :latitude, :float
    add_column :powerbanks, :longitude, :float
  end
end
