Types::AlcoholEnum = GraphQL::EnumType.define do
  name 'Alcohol'
  description 'The possible types of alcohol a Restaurant is able to serve.'

  value 'UNKNOWN',       'Not sure if alcohol is served or not.', value: nil
  value 'NONE',          'No alcohol available.',                 value: 'None'
  value 'BEER_AND_WINE', 'Only beer and/or wine are available.',  value: 'Beer & Wine Only'
  value 'FULL_BAR',      'A full bar is available.',              value: 'Full Bar'
end
