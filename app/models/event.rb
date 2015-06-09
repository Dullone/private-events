class Event < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :invitations
  has_many :invitations
end
