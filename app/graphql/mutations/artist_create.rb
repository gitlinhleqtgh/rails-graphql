# frozen_string_literal: true

module Mutations
  class ArtistCreate < BaseMutation
    description "Creates a new artist"

    field :artist, Types::ArtistType, null: false

    argument :artist_input, Types::ArtistInputType, required: true

    def resolve(artist_input:)
      artist = ::Artist.new(**artist_input)
      raise GraphQL::ExecutionError.new "Error creating artist", extensions: artist.errors.to_hash unless artist.save

      { artist: artist }
    end
  end
end
