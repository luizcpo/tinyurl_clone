class ShortLink < ApplicationRecord
  before_validation :generate_auto_token
  has_many :statistics

  validates_presence_of :url
  validates :url, format: URI::regexp(%w[http https])
  validates_uniqueness_of :token
  validates_uniqueness_of :url
  validates_length_of :url, within: 3..255, on: :create, message: "Your url is either too short or too long."
  validates_length_of :token, within: 3..255, on: :create, message: "Your token is either too short or too long."

  def generate_auto_token
    self.token = SecureRandom.uuid[0..5] if self.token.nil? || self.token.empty?
    true
  end
end
