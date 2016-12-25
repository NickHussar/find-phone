class Manufacturer < ApplicationRecord
  validates :mn_name, presence: true,
                   length: { minimum: 3}
end
