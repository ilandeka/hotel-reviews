class Hotel
  include Mongoid::Document
  Mongoid::Attributes::Dynamic
  field :name, type: String
  field :city, type: String
  field :address, type: String
  field :latitude, type: Float
  field :longitude, type: Float

  embeds_one :review
  # embeds_many :comments
  # accepts_nested_attributes_for :comments

  # Search
  def self.search(search)
    if search
      any_of({name: /#{search}/i},{'review.text': /#{search}/i})
    end
  end
end
