require 'test_helper'
require 'fileutils'
require 'compass'
require 'compass/logger'
require 'sass/plugin'

class VariablesImporterTest < Test::Unit::TestCase

  def setup
    Compass.configure_sass_plugin!
  end

  def render(scss)
    options = Compass.sass_engine_options
    options[:line_comments]      = false
    options[:style]              = :expanded
    options[:syntax]             = :scss
    options[:compass]          ||= {}
    options[:compass][:logger] ||= Compass::NullLogger.new
    Sass::Engine.new(scss, options).render.strip
  end

  def get_test(file)
    content = File.read(file)
    input, output = content.split(/===+/)
    [input.strip, output.strip]
  end

  Dir.glob File.join(File.dirname(__FILE__), '**/*.scss.test') do |file|
    basename = File.basename(file, '.scss.test')
    self.class_eval <<-RUBY
      def test_#{basename.gsub('-', '_')}
        input, output = get_test("#{file}")

        css = render <<-SCSS
          $experimental-support-for-mozilla : false !default;
          $experimental-support-for-webkit : false !default;
          $experimental-support-for-opera : false !default;
          $experimental-support-for-microsoft : false !default;
          $experimental-support-for-khtml : false !default;
          @import "compass";
          \#{input}
        SCSS

        assert_equal output, css
      end
    RUBY
  end
end

