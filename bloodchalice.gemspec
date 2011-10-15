require './lib/bloodchalice/version'
Gem::Specification.new do |s|
  s.name          = 'bloodchalice'
  s.version       = BloodChalice::VERSION
  s.date          = '2011-09-13'
  s.summary       = "A cooperative roleplaying videogame"
  s.description   = "You and your friends will be vampires. Each turn you will be able to move, fight, drink blood and transfer blood to the chalice."
  s.authors       = ["Gonzalo Rodriguez-Baltanas Diaz"]
  s.email         = 'siotopo@gmail.com'
  s.files         = Dir['lib/**/*.rb'] + Dir['bin/**/*'] + Dir['assets/**/*']
  s.bindir        = 'bin'                                           
  s.executables   << 'bloodchalice'
  s.require_paths = ["lib"]
  s.homepage      = 'https://github.com/Nerian/s9-e1'
end