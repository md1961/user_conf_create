class UserConfigurationName < ActiveRecord::Base
  has_many :user_configuration_values
end
