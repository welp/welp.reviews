Types::NoiseLevelEnum = GraphQL::EnumType.define do
  name 'NoiseLevel'
  description 'The possible noise levels a Restaurant can have.'

  value 'UNKNOWN',   'Not sure how noisy.',  value: nil
  value 'QUIET',     'Low noise level.',     value: 'Quiet'
  value 'AVERAGE',   'Average noise level.', value: 'Average'
  value 'LOUD',      'Loud noise level.',    value: 'Loud'
  value 'VERY_LOUD', 'Ouch noise level.',    value: 'Very Loud'
end
