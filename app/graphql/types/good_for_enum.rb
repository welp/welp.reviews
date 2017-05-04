Types::GoodForEnum = GraphQL::EnumType.define do
  name 'GoodFor'
  description 'The things a Restaurant can do well.'

  value 'BREAKFAST',  'The most important meal of the day.',     value: 'Breakfast'
  value 'BRUNCH',     'The most important meal of the weekend.', value: 'Brunch'
  value 'LUNCH',      'The middle meal.',                        value: 'Lunch'
  value 'DINNER',     'The second-to-last meal of the day.',     value: 'Dinner'
  value 'LATE_NIGHT', 'Lost track of time and still need food?', value: 'Late Night'
  value 'DESSERT',    'The last meal of the day.',               value: 'Dessert'
end
