Types::URI = GraphQL::ScalarType.define do
  name 'URI'
  description 'An RFC 3986, RFC 3987, and RFC 6570 (level 4) compliant URI string.'

  coerce_input -> (value, context) do
    uri = URI.parse(value)

    case uri
    when URI::HTTP, URI::HTTPS
      uri
    else
      nil
    end
  end

  coerce_result -> (value, context) do
    value.to_s
  end
end
