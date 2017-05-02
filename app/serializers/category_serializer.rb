class CategorySerializer < ApplicationSerializer
  attributes :id, :name

  belongs_to :parent, if: :has_parent?

  def has_parent?
    object.parent_category_id.present?
  end
end
