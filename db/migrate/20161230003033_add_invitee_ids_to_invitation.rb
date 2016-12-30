class AddInviteeIdsToInvitation < ActiveRecord::Migration[5.0]
  def change
    add_column :invitations, :invitee_ids, :integer, array: true, default: '{}'
  end
end
