class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create { generate_token(:remember_token) }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 6, maximum: 120 }, allow_blank: true, confirmation: true
  
  validates :alias, presence: true
    
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = User.encrypt(User.new_token)
    end while User.exists?(column => self[column])
    self[column]
  end
end
