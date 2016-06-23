#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :tweets, inverse_of: :user
  has_many :friends, inverse_of: :user
end
