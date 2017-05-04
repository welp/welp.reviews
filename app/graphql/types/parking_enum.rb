Types::ParkingEnum = GraphQL::EnumType.define do
  name 'Parking'
  description 'Possible types of parking options.'

  value 'STREET',      'Up close to the curb.', value: 'Street'
  value 'GARAGE',      'In a garage.',          value: 'Garage'
  value 'PRIVATE_LOT', 'In a private parking.', value: 'Private Lot'
end
