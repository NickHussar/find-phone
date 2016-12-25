class Tablet < ApplicationRecord
  has_many :comments, as: :commentable
  validates :tb_developer, presence: true,
                        length: { minimum: 3}
end
