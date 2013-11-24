class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :number
      t.references :lesson, index: true

      t.timestamps
    end
  end
end
