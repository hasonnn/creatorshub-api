class Course < ApplicationRecord
    belongs_to :user

    has_many :episodes, dependent: :destroy

    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
end
