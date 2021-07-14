class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    {token: JsonWebToken.encode(user_id: user.id), user: user.to_json(include: [:permissions], only: [:id, :email, :type_user_id, :name, :last_name, :image_profile])} if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.where(email: email, type_user_id: [TypeUser::ADMINISTRATOR, TypeUser::OPERATIVE, TypeUser::CLIENT]).first
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end


class JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
    HashWithIndifferentAccess.new body
  rescue
    nil
  end
end