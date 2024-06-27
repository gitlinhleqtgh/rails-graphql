# frozen_string_literal: true

module Mutations
  class ArtistUpdate < BaseMutation
    description "Updates a artist by id"

    field :artist, Types::ArtistType, null: false

    argument :id, ID, required: true
    argument :artist_input, Types::ArtistInputType, required: true

    def resolve(id:, artist_input:)
      artist = ::Artist.find(id)
      raise GraphQL::ExecutionError.new "Error updating artist", extensions: artist.errors.to_hash unless artist.update(**artist_input)

      { artist: artist }
    end
  end
end
