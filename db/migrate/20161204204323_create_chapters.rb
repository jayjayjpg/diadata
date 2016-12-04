class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.integer :chapter_index
      t.string :title

      t.timestamps
    end
  end
end
