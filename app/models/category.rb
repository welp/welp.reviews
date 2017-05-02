class Category < ApplicationRecord
  belongs_to :parent,
    class_name: 'Category',
    foreign_key: :parent_category_id,
    optional: true

  has_many :children,
    class_name: 'Category',
    inverse_of: :parent,
    foreign_key: :parent_category_id,
    dependent: :destroy

  validates :name, presence: true
end
