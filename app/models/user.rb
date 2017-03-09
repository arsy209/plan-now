class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :events
  has_many :comments
  has_many :attendings, foreign_key: "attendee_id"
  has_many :attended_events, through: :attendings, foreign_key: "attendee_id"
  has_many :invitations, foreign_key: "invitee_id"
  has_many :invitations, foreign_key: "inviter_id"

  validates :name, presence: true

end
