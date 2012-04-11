require 'compass-placeholders/version'
require 'compass'

module CompassPlaceholders
  BASE_PATH = File.join(File.dirname(__FILE__), '..')
end

Compass::Frameworks.register('compass-placeholders',
                             :path => CompassPlaceholders::BASE_PATH)
