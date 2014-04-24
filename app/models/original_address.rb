class OriginalAddress < ActiveRecord::Base
  before_validation :set_token

  validates :token, uniqueness: true, presence: true

  def to_param
    token
  end

  private

  def set_token
    while self.token.nil? || OriginalAddress.find_by(token: self.token)
      self.token = SecureRandom.hex(3)
    end
  end
end
