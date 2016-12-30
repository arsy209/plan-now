class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.integer :inviter_id
      t.integer :invitee_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
