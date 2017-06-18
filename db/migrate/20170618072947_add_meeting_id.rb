class AddMeetingId < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :meeting
    change_column :articles, :meeting_id, :integer, null: false
  end
end
