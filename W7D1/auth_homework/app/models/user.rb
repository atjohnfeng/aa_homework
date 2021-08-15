class User < ApplicationRecord
    validates :username, presence: true
    validates :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: "Password can't be blank" }
    validates :pw, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_token_session

    def self.find_by_credentials(un, pw)
        @user = User.find_by(username: un)
        return @user if @user && BCrypt::Password.new(user.password_digest).is_password?(pw)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_token_session
        self.session_token ||= User.generate_session_token
    end

    def password=(pw)
        @password = pw
        self.password_digest = BCrypt::Password.create(pw)
    end

    attr_reader :pw

end