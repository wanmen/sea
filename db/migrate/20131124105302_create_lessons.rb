class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.integer :number
      t.references :course, index: true

      t.timestamps
    end
  end
end
