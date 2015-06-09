class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  validates :name, presence: true
end
