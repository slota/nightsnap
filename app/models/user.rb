class User < ActiveRecord::Base
  has_secure_password

  enum role: %w(registered_user platform_admin)

end
