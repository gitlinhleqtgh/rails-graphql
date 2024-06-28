module Types
  class NotificationType < Types::BaseObject
    field :id, ID, null: false
    field :type, String, null: true
    field :description, String, null: true
  end
end
