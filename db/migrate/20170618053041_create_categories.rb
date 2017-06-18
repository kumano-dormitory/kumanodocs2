class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.boolean :require_content, null: false, default: false

      t.timestamps
    end
  end
end
