Types::RootQuery = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of the Welp GraphQL API.'

  field :restaurant, Types::Restaurant do
    description 'Find a Restaurant by ID.'

    argument :id, !types.Int, 'The Restaurant ID.'

    resolve -> (object, arguments, context) {
      Restaurant.find(arguments[:id])
    }
  end
end
