class User < UserAuthKuma::User
  has_many :user_configuration_values

  def get_conf_value(name)
    obj_value = user_configuration_values.detect { |value| value.user_configuration_name.name == name }
    return obj_value && obj_value.value
  end
end
