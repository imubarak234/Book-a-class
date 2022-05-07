class CreateClassesReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :classes_reservations do |t|
      t.references :class, foreign_key: true
      t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
