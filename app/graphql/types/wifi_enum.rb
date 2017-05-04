Types::WifiEnum = GraphQL::EnumType.define do
  name 'Wifi'
  description 'The possible forms of Wifi that a Restaurant can have.'

  value 'UNKNOWN', 'Not sure if the Restaurant has Wifi or not.', value: nil
  value 'NONE',    'No wifi is available.',                       value: 'None'
  value 'FREE',    'Wifi is available for free.',                 value: 'Free'
  value 'PAID',    'Wifi is available at a monetary cost.',       value: 'Paid'
end
