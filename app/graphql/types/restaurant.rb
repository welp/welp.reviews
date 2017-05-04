Types::Restaurant = GraphQL::ObjectType.define do
  name 'Restaurant'
  description 'A place to go to for delicious eats and drinks.'

  field :name, !types.String, 'What the owners of the Restaurant decided to call it.'

  field :price, !types.String do
    description 'How cheap or expensive the Restaurant is on a scale of $ to $$$$.'

    resolve -> (restaurant, arguments, context) {
      restaurant.price * '$'
    }
  end

  field :url, types.String, "The Restaurant's external URL."
  field :menu_url, types.String, "A URL to the Restaurant's menu."
  field :closed, !types.Boolean, 'Whether or not the Restaurant is permanently closed.'
  field :address, types.String, 'The physical address of the Restaurant.'
  field :phone, types.String, 'A number you can use to call the Restaurant on a phone.'
  field :hours, types.String, 'When the Restaurant is open. No particular formatting, sorry.'
end
