WelpSchema = GraphQL::Schema.define do
  query Types::RootQuery
  mutation Mutations::RootMutation

  resolve_type -> (object, context) {
    Types.const_get(object.class.name)
  }
end
