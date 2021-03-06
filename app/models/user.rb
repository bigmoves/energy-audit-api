class User < ActiveRecord::Base
  has_secure_password

  has_many :api_keys
  has_many :ownerships
  has_many :buildings, :through => :ownerships

  def session_api_key
    api_keys.active.session.first_or_create
  end
end
