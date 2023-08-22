# frozen_string_literal: true

module Assets
  class Engine < ::Rails::Engine
    isolate_namespace Assets
  end
end
