class Episode < ApplicationRecord
    belongs_to :user
    belongs_to :course

    has_many :reviews

    validates :title, presence: true
    validates :description, presence: true
    validates :url, presence: true
end
