class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.references :author, references: :user, null: false
      t.string :body, null: false
      t.integer :format, null: false, default: 0
      t.string :crypt_password, null: false
      t.integer :number, null:false

      t.timestamps
    end
    add_index :articles, :author
  end
end
