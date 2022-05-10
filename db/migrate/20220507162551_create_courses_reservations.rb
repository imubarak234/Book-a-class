class CreateCoursesReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :courses_reservations do |t|
      t.references :course, foreign_key: true
      t.references :reservation, foreign_key: true
      t.timestamps
    end
  end
end
