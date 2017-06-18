class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories do |t|
      t.references :article, null: false
      t.references :category, null: false
      t.string :extra_content
      t.timestamps
    end
    add_index :article_categories, [:article, :category]
  end
end
