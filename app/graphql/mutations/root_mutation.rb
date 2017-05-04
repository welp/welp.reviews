Mutations::RootMutation = GraphQL::ObjectType.define do
  name 'Mutation'

  field :addTip, field: Mutations::AddTip.field
end
