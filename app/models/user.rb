class User < UserAuthKuma::User
  has_many :user_configuration_values
end
