class UserProfile < ApplicationRecord
  belongs_to :user, optional: false
end
