class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :reserve_date
      t.integer :duration
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
