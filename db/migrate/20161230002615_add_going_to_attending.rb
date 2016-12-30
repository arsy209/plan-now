class AddGoingToAttending < ActiveRecord::Migration[5.0]
  def change
    add_column :attendings, :going, :boolean
  end
end
