class ApplicationController < ActionController::Base
  before_filter :authenticate

  protect_from_forgery :secret => '7d35786ab90a0561c3ca228af02809338b47c77c'
end
