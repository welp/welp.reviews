Types::Tip = GraphQL::ObjectType.define do
  name 'Tip'
  description 'A tip left on a Restaurant.'

  interfaces [Types::WriteableInterface]

  field :id,   !types.Int, "The Tip's unique identifier."

  field :user, !types.User, 'The User that wrote this Tip.'
  field :restaurant, !types.Restaurant, 'The Restaurant this Tip is for.'
end
