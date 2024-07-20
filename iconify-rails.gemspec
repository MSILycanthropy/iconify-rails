require_relative "lib/iconify/version"

Gem::Specification.new do |spec|
  spec.name        = "iconify-rails"
  spec.version     = Iconify::VERSION
  spec.authors     = [ "Ethan Kircher" ]
  spec.email       = [ "ethanmichaelk@gmail.com" ]
  spec.homepage    = "https://github.com/rails/jsbundling-rails"
  spec.summary     = "Use @iconify/json icon sets with Rails for inline SVGs"
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
end
