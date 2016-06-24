#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :tweets
end
