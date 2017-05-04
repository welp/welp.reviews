Types::WriteableInterface = GraphQL::InterfaceType.define do
  name 'Writeable'
  description 'Things that can have a written body of text.'

  field :body, !types.String, 'The body of this item.'
end
