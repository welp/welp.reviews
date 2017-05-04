WelpSchema = GraphQL::Schema.define do
  query Types::RootQuery

  resolve_type -> (object, context) {
    Types.const_get(object.class.name)
  }
end
