source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in iconify-json-rails.gemspec.
gemspec

rails_version = ENV["RAILS_VERSION"] || "6.1.0"
gem "rails", "~> #{rails_version}"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

group :development, :test do
  gem "rubocop"

  gem "rubocop-rails-omakase"
end
