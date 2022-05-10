class CreateCoursesUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :courses_users do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
