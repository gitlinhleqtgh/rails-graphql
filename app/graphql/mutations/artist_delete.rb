# frozen_string_literal: true

module Mutations
  class ArtistDelete < BaseMutation
    description "Deletes a artist by ID"

    field :artist, Types::ArtistType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      artist = ::Artist.find(id)
      raise GraphQL::ExecutionError.new "Error deleting artist", extensions: artist.errors.to_hash unless artist.destroy!

      { artist: artist }
    end
  end
end
