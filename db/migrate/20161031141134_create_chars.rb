class CreateChars < ActiveRecord::Migration[5.0]
  def change
    create_table :chars do |t|
      t.string :title
      t.string :route
      t.string :url

      t.timestamps
    end
  end
end
