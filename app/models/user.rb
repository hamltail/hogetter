class User < ApplicationRecord
  before_save { self.email = email.downcase }
  devise :database_authenticatable,
         :registerable,
         :validatable
  has_many :tweets, dependent: :destroy
  validates :username,
            uniqueness: true,
            presence: true,
            length: { minimum: 4, maximum: 20 },
            format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :email,
            uniqueness: true,
            presence: true
# FIXME: モデル分ける必要あるかも
#   validates :profile,
#             length: { maximum: 200 }
#   validates :url,
#             format: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/
end
