class AddDetailsToChar < ActiveRecord::Migration[5.0]
  def change
    add_column :chars, :head_shot, :string
    add_column :chars, :full_view, :string
  end
end
