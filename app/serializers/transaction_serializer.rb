class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :user
end
