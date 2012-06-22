Gem::Specification.new do |s|
  s.name = 'sinatra-spec'
  s.version = '1.0.0'
  s.date = Time.now.strftime('%Y-%m-%d')

  s.summary = 'Simple specs for Sinatra apps using MiniTest'
  s.description = 'Simple specs for Sinatra apps using MiniTest'

  s.author = 'Michael Jackson'
  s.email = 'mjijackson@gmail.com'

  s.require_paths = %w< lib >

  s.files = Dir['lib/**/*.rb'] +
    %w< sinatra-spec.gemspec Rakefile README.md >

  s.add_dependency('minitest', '>= 3.1')
  s.add_dependency('rack-test', '>= 0.6')
  s.add_development_dependency('rake')

  s.homepage = 'http://mjijackson.github.com/sinatra-spec'
end
