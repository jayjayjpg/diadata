class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
