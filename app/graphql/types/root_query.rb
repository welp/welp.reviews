Types::RootQuery = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root of the Welp GraphQL API.'

  field :currentUser, Types::User, 'The authenticated user.' do
    resolve -> (object, arguments, context) { context[:current_user] }
  end

  field :restaurant, Types::Restaurant do
    description 'Find a Restaurant by ID.'

    argument :id, !types.Int, 'The Restaurant ID.'

    resolve -> (object, arguments, context) {
      Restaurant.find(arguments[:id])
    }
  end

  field :restaurants, !types[Types::Restaurant] do
    description 'A paginated list of all Restaurants in the system.'

    argument :page,    types.Int, 'Which page of Restaurants you would like.',     default_value: 1
    argument :perPage, types.Int, 'How many Restaurants you would like per page.', default_value: 25

    resolve -> (object, arguments, context) {
      Restaurant.page(arguments[:page]).per(arguments[:perPage])
    }
  end
end
