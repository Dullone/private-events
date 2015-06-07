class Invitation < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  validates :date, presencse: true
  validates :location, presencse: true
end
