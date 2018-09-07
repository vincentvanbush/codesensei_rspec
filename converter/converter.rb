class Converter
  attr_reader :currencies

  def initialize(currencies)
    @currencies = currencies
  end

  # def add_currency(currency, rate)
  #   @currencies[currency] = rate
  # end

  def convert_to_currency(value_in_pln, currency)
    value_in_pln / currencies[currency]
  end
end
