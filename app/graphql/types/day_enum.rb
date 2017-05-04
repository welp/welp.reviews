Types::DayEnum = GraphQL::EnumType.define do
  name 'Day'
  description 'The days of the week.'

  value 'MONDAY',                        'Monday.',    value: 'Monday'
  value 'TUESDAY',                       'Tuesday.',   value: 'Tuesday'
  value 'WEDNESDAY',                     'Wednesday.', value: 'Wednesday'
  value 'THURSDAY',                      'Thursday.',  value: 'Thursday'
  value 'FRIDAY',    '(Gotta get down on) Friday.',    value: 'Friday'
  value 'SATURDAY',                      'Saturday.',  value: 'Saturday'
  value 'SUNDAY',                        'Sunday.',    value: 'Sunday'
end
