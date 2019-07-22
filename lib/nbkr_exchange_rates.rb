require 'ox'
require 'pry'
require 'net/http'

class Rate
  
  URL = URI('https://www.nbkr.kg/XML/daily.xml')
  
  def self.get_xml_exchange_rates
    Net::HTTP.get(URL)
  end

  def self.parse_xml_exchange_rates
    Ox.parse(get_xml_exchange_rates)
  end

  def self.get_hash_of_rates
    currencies_and_rates = {}
    parse_xml_exchange_rates.CurrencyRates.nodes.each do |key|
      currencies_and_rates.store(key.ISOCode, key.Value.text)
    end
    return currencies_and_rates
  end

end
