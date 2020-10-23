# frozen_string_literal: true

require_relative 'lib/sequel/extensions/at_time_zone'

Gem::Specification.new do |s|
	s.name        = 'sequel-at_time_zone'
	s.version     = Sequel::Extensions::AtTimeZone::VERSION

	s.summary     =
		'Sequel extension that provides API for `AT TIME ZONE` SQL construct'
	s.description = 'Now a handy Sequel-API for SQL `AT TIME ZONE` is a reality!'

	s.authors     = ['Alexander Popov']
	s.email       = ['alex.wayfer@gmail.com']
	s.homepage    = 'https://github.com/AlexWayfer/sequel-at_time_zone'
	s.license     = 'MIT'

	s.add_runtime_dependency 'sequel', '>= 4.1.0', '<= 6'

	s.add_development_dependency 'codecov', '~> 0'
	s.add_development_dependency 'minitest-bacon', '~> 1'
	s.add_development_dependency 'minitest-reporters', '~> 1'
	s.add_development_dependency 'pry', '~> 0'
	s.add_development_dependency 'pry-byebug', '~> 3.5'
	s.add_development_dependency 'rake', '~> 12'
	s.add_development_dependency 'rubocop', '~> 1.0'
	s.add_development_dependency 'simplecov', '~> 0'

	s.files = Dir[File.join('lib', '**', '*')]
end
