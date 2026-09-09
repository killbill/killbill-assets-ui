# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in killbill-assets-ui.gemspec.
gemspec

# json 3.0 dropped the quirks_mode keyword that ActiveSupport::JSON.encode
# still passes to JSON.generate, raising ArgumentError (breaks any code path
# that calls #to_json). Was incidentally protected by rubocop's own
# `json ~> 2.3` dependency, but rubocop 1.90.0 loosened that to
# `json >= 2.3` (no upper bound), so this can float to 3.x on any fresh
# bundle install.
gem 'json', '~> 2.21'

group :development do
  gem 'gem-release'
  gem 'rubocop'
end
