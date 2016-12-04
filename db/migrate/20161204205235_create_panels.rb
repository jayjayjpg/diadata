class CreatePanels < ActiveRecord::Migration[5.0]
  def change
    create_table :panels do |t|
      t.string :title
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
