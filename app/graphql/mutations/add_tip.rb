Mutations::AddTip = GraphQL::Relay::Mutation.define do
  name 'AddTip'

  input_field :restaurantID, !types.Int
  input_field :body, !types.String

  return_field :tip, Types::Tip

  resolve -> (object, inputs, ctx) {
    restaurant = Restaurant.find(inputs[:restaurantID])

    tip = restaurant.tips.build(body: inputs[:body])

    tip.save!

    response = {
      tip: tip
    }
  }
end
