class Watch < ApplicationRecord
  has_many :comments, as: :commentable
  validates :developer, presence: true,
                        length: { minimum: 3}
end
