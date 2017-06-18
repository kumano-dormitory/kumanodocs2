class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.date :date, null: false
      t.datetime :deadline, null: false

      t.timestamps
    end
  end
end
