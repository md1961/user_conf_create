class UserConfigurationValue < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_configuration_name
end
