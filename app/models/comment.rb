class Comment
  include Mongoid::Document

  embedded_in :hotel

  field :name, type: String
  field :description, type: String
end
