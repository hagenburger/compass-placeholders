require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new :test do |t|
  t.libs << 'lib'
  t.libs << 'test'
  test_files = FileList['test/**/*_test.rb']
  t.test_files = test_files
  t.verbose = true
end

task :add do
  puts 'module/name: '
  path, name = STDIN.gets.chomp.split('/')
  puts 'placeholders: '
  placeholders = STDIN.gets.chomp.strip.split(/[ ,]+/)

  File.open "stylesheets/compass-placeholders/#{path}/_#{name}.scss", 'w' do |f|
    f << <<-SCSS
$#{name}-placeholders: #{placeholders.join(', ')} !default;

@each $property in $#{name}-placeholders {
  %#{name}-\#{$property} {
    @include #{name}($property);
  }
}

SCSS
  end

  File.open "stylesheets/compass-placeholders/_#{path}.scss", 'a' do |f|
    f << %Q(@import "#{path}/#{name}";\n)
  end


  test_value = placeholders.first
  File.open "test/integration/#{path}/#{name}.scss.test", 'w' do |f|
    f << <<-SCSS
@import "compass-placeholders";

#test {
  @extend %#{name}-#{test_value};
}

===

#test {
  #{name}: #{test_value};
}

SCSS
  end
end

task :default => [:test]

