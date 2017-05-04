Mutations::AddTip = GraphQL::Relay::Mutation.define do
  name 'AddTip'

  input_field :restaurantID, !types.Int
  input_field :body, !types.String

  return_field :tip, Types::Tip

  resolve -> (object, inputs, context) {
    restaurant = Restaurant.find(inputs[:restaurantID])

    tip = restaurant.tips.build(user: context[:current_user], body: inputs[:body])

    if tip.save
      { tip: tip }
    else
      raise GraphQL::ExecutionError.new("Invalid input for Tip: #{tip.errors.full_messages.join(', ')}")
    end
  }
end
