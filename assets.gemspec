require_relative "lib/assets/version"

Gem::Specification.new do |s|
  s.name        = "killbill-assets-ui"
  s.version     = Assets::VERSION
  s.authors     = 'Kill Bill core team'
  s.email       = 'killbilling-users@googlegroups.com'
  s.homepage    = 'https://killbill.io'
  s.summary     = 'Kill Bill Assets UI mountable engine'
  s.description = 'Rails UI plugin for the Deposit plugin.'
  s.license     = 'MIT'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  s.add_dependency "rails", ">= 7.0"
  s.add_dependency 'font-awesome-rails'
  s.add_dependency 'jquery-rails', '~> 4.5.1'
  s.add_dependency 'bootstrap-datepicker-rails'
end
