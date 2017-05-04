require "pry-pretty-numeric/version"
require "pp"

class Numeric
  def pretty_inspect
    integral, fractional = super.split('.', 2)
    integral = integral.reverse.gsub(/\d{3}(?!$)/, '\&_').reverse
    fractional = fractional.gsub(/\d{3}(?!$)/, '\&_') if fractional
    [integral, fractional].compact.join('.')
  end
end
