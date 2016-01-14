Gem::Specification.new do |s|
  s.name        = 'cymbal'
  s.version     = '1.0.0'
  s.date        = Time.now.strftime("%Y-%m-%d")

  s.summary     = 'Converts hash keys from strings to symbols'
  s.description = "Allows saner hash key manipulation by converting keys to symbols"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/cymbal'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_development_dependency 'rubocop', '~> 0.35.0'
  s.add_development_dependency 'rake', '~> 10.5.0'
  s.add_development_dependency 'codecov', '~> 0.1.1'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
end
