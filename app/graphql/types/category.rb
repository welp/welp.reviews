Types::Category = GraphQL::ObjectType.define do
  name 'Category'
  description 'A category of restaurants.'

  field :id,    !types.Int, "The Category's unique identifier."
  field :name,  !types.String, "The Category's name."
  field :parent, Types::Category, "This Category's parent category."
end
