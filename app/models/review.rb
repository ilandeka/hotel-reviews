class Review
  include Mongoid::Document
  field :title, type: String
  field :text, type: String
  field :rating, type: Integer

  embedded_in :hotel
end
