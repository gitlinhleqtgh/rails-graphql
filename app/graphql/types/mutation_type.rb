# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :artist_delete, mutation: Mutations::ArtistDelete
    field :artist_update, mutation: Mutations::ArtistUpdate
    field :artist_create, mutation: Mutations::ArtistCreate
    field :artist, mutation: Mutations::Artist

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
