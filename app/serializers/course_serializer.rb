class CourseSerializer < ActiveModel::Serializer
  attributes(:id, :title, :description, :created_at) 

  belongs_to(:user)
  has_many(:episodes)


  class EpisodeSerializer < ActiveModel::Serializer
    attributes(:id, :title, :description, :url, :created_at)

    belongs_to(:user)
    belongs_to(:course)
    has_many(:reviews)
  end
end


class ReviewSerializer < ActiveModel::Serializer
  attributes(:id, :body, :created_at)

  belongs_to(:user)
  belongs_to(:episode)
end