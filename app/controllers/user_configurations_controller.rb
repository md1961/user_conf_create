class UserConfigurationsController < ApplicationController

  def index
    @configurations = User.all.map { |user| UserConfiguration.new(user) }
    @configuration_names = UserConfiguration.names
  end

  def new
    @configuration = UserConfiguration.new(User.find(params[:user_id]))
  end

  def create
    raise "debugging..."

    @configuration = UserConfiguration.new(params[:user_configuration])
  end
end
