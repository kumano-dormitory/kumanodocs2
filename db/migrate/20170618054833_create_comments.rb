class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :article, null: false
      t.references :block, null: false

      t.timestamps
    end
    add_index :comments, [:article, :block]
  end
end
