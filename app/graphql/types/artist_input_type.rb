module Types
  class ArtistInputType < Types::BaseInputObject
    argument :id, ID, required: false
    argument :email, String, required: true
    argument :first_name, String, required: false
    argument :last_name, String, required: false
  end
end
