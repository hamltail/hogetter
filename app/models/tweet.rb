class Tweet < ApplicationRecord
  belongs_to :user
  delegate :username, to: :user
  validates :content,
            presence: true,
            length: { minimum: 1, maximum: 140 }
end
