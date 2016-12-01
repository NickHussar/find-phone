class Comment < ApplicationRecord
  belongs_to :phone, :tablet, :watch
end
