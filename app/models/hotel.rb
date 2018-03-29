class Hotel
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :address, type: String
  field :latitude, type: Float
  field :longitude, type: Float

  embeds_one :review

  # Search
  def self.search(search)
    if search
      any_of({name: /#{search}/i},{'review.text': /#{search}/i})
    end
  end
end
