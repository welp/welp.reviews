Types::AttireEnum = GraphQL::EnumType.define do
  name 'Attire'
  description 'What you should wear to a Restaurant.'

  value 'UNKNOWN', 'Not sure what you should wear.', value: nil
  value 'CASUAL',  'Wear whatever you want.',        value: 'Casual'
  value 'DRESSY',  'Dress nicely.',                  value: 'Dressy'
  value 'FORMAL',  'Formal-wear is required.',       value: 'Formal (Jacket Required)'
end
