class User < ActiveRecord::Base
  # We need these 2 lines to let SimpleAuthentication know that this
  # model is the one we want to authenticate in the database
  Sinatra::SimpleAuthentication.require_adapter
  include Sinatra::SimpleAuthentication::Models::ActiveRecord::Adapter
end