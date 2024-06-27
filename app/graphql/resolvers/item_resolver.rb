module Resolvers
  class ItemResolver < BaseResolver
    type Types::ItemType, null: false
    argument :id, ID

    def resolve(id:)
      ::Item.find(id)
    end
  end
end
