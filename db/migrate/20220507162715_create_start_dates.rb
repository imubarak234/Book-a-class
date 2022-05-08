class CreateStartDates < ActiveRecord::Migration[7.0]
  def change
    create_table :start_dates do |t|
      t.string :start_date
      t.references :class, foreign_key: true
      t.timestamps
    end
  end
end
