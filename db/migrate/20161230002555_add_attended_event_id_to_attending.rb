class AddAttendedEventIdToAttending < ActiveRecord::Migration[5.0]
  def change
    add_column :attendings, :attended_event_id, :integer
  end
end
