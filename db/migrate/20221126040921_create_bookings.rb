class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :powerbank, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :total_cost
      t.string :status

      t.timestamps
    end
  end
end
