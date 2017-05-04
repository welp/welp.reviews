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

  field :restaurants, !types[Types::Restaurant] do
    description 'Get a partial or full list of Restaurants.'

    argument :page, types.Int, 'Which page of results you would like.', default_value: 1
    argument :perPage, types.Int, 'How many results you would like per page.', default_value: 25

    resolve -> (object, arguments, context) {
      Restaurant.page(arguments[:page]).per(arguments[:perPage])
    }
  end
end
