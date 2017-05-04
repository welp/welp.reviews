Types::AmbienceEnum = GraphQL::EnumType.define do
  name 'Ambience'
  description 'The possible ambiences a Restaurant can have.'

  value 'DIVEY',    'Divey, but in a good way.',             value: 'Divey'
  value 'HIPSTER',  'Hipster, almost always pejoratively.',  value: 'Hipster'
  value 'CASUAL',   'No jackets, please.',                   value: 'Casual'
  value 'TOURISTY', "Don't come here if you're a local.",    value: 'Touristy'
  value 'TRENDY',   "Come here if you're a local.",          value: 'Trendy'
  value 'INTIMATE', 'Great third date spot.',                value: 'Intimate'
  value 'ROMANTIC', 'Great fifth date spot.',                value: 'Romantic'
  value 'CLASSY',   'Maybe wear a jacket.',                  value: 'Classy'
  value 'UPSCALE',  'This place looks and feels expensive.', value: 'Upscale'
end
