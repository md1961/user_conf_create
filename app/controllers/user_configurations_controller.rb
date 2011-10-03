class UserConfigurationsController < ApplicationController

  def index
    @configurations = User.all.map { |user| UserConfiguration.new(user) }
    @configuration_names = UserConfiguration.names
  end
end
