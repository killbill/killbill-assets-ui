# frozen_string_literal: true
require 'font-awesome-rails'
require 'jquery-rails'
require 'jquery-datatables-rails'
require 'bootstrap-sass'
require 'bootstrap-datepicker-rails'
module Assets
  class Engine < ::Rails::Engine
    isolate_namespace Assets
  end
end
