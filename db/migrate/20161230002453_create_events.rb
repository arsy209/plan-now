class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    t.string :title
    t.time :start
    t.time :end
    t.text :description
    t.string :location
    t.references :user, index: true, foreign_key: true
    
    t.timestamps null: false
    end
  end
end
