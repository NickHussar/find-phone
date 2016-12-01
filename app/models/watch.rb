class Watch < ApplicationRecord
  has_many :comments
  validates :developer, presence: true,
                        length: { minimum: 3}
end
