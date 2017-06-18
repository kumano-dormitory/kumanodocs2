class AddNameToBlock < ActiveRecord::Migration[5.1]
  def change
    add_column :blocks, :name, :string
    change_column :blocks, :name, :string, null: false
  end
end
