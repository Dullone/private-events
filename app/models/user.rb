class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  has_many :attending_events, :through => :invitations,
            :class_name => 'Event',
            :foreign_key => 'event_id',
            :source => :event
  validates :name, presence: true
end
