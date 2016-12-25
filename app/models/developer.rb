class Developer < ApplicationRecord
  validates :dv_name, presence: true,
                   length: { minimum: 3}
end
