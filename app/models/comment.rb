class Comment
  include Mongoid::Document
  field :name, type: String
  field :description, type: String

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 5, maximum: 300 }

  embedded_in :hotel, inverse_of: :comments
end
