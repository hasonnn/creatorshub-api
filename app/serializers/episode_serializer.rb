class EpisodeSerializer < ActiveModel::Serializer
  attributes(:id, :title, :description, :url, :created_at)

  belongs_to(:user, key: :author)
  belongs_to(:course)
  has_many(:reviews)

  class ReviewSerializer < ActiveModel::Serializer
    attributes(:id, :body, :created_at, :user)
  
    belongs_to(:user)
    belongs_to(:episode)
  end
end


