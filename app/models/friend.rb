class Friend < ActiveRecord::Base
  belongs_to :user, inverse_of: :friends
  belongs_to :friend
end
