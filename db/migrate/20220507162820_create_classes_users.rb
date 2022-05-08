class CreateClassesUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :classes_users do |t|
      t.references :user, foreign_key: true
      t.references :class, foreign_key: true
      t.timestamps
    end
  end
end
