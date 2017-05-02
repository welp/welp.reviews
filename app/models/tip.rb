class Tip < ApplicationRecord
  belongs_to :user,       optional: false
  belongs_to :restaurant, optional: false
end
