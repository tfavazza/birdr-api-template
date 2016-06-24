class Tweet < ActiveRecord::Base
  belongs_to :user, inverse_of: :tweets, class_name: 'User'
end
