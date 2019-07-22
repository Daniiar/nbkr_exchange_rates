require 'nbkr_exchange_rates.rb'

describe "Rate" do

  it "get xml exchange rates" do
    start = "<?xml version=\"1.0\" encoding=\"windows-1251\" ?>\n<CurrencyRates Name=\"Daily Exchange Rates\""
    expect(Rate.get_xml_exchange_rates).to start_with(start)
  end

  it "get hash of rates" do
    hash = Rate.get_hash_of_rates
    expect(hash.size).to eq(4)
    expect(hash.class).to eq(Hash)
    expect(hash.include? "USD").to eq(true)
    expect(hash.include? "EUR").to eq(true)
    expect(hash.include? "KZT").to eq(true)
    expect(hash.include? "RUB").to eq(true)
  end

end