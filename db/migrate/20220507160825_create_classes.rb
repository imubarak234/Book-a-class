class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :duration
      t.string :photo
      t.float :price

      t.timestamps
    end
  end
end
