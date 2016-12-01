class Watch < ApplicationRecord
  validates :developer, presence: true,
                        length: { minimum: 3}
end
