Types::Review = GraphQL::ObjectType.define do
  name 'Review'
  description 'A review left on a Restaurant.'

  interfaces [Types::WriteableInterface]

  field :id, !types.Int, "The Review's unique identifier."
  field :rating, !types.Int, "The Review's numeric rating."

  field :user, !Types::User, 'The User that wrote this Review.'
  field :restaurant, !Types::Restaurant, 'The Restaurant this Review is for.'
end
