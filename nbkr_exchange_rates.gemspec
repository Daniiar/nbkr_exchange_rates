Gem::Specification.new do |s|
  s.name = %q{nbkr_exchange_rates}
  s.version = "0.0.5"
  s.date = %q{2019-07-20}
  s.summary = %q{gem for working with nbkr}
  
  s.files = [
    "lib/nbkr_exchange_rates.rb"
  ]

  s.require_paths = ["lib"]
  s.authors = ["Daniiar"]
  s.email = 'akhmedovdanchik@gmail.com'

  s.add_dependency 'pry'
  s.add_dependency 'ox'
end
