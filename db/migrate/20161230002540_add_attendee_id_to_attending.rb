class AddAttendeeIdToAttending < ActiveRecord::Migration[5.0]
  def change
    add_column :attendings, :attendee_id, :integer
  end
end
