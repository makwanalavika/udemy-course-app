class Message < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true
  scope :custome_display, -> { order(:created_at).last(20)}
end
