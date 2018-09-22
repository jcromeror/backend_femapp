class UserSerializer < ActiveModel::Serializer
  attributes :id, :nit, :type_nit, :names, :last_name, :email, :gender, :phone, :address
  has_one :role
end
