# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pincode}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Abhinav Saxena"]
  s.date = %q{2011-11-19}
  s.email = %q{abhinav061@gmail.com}
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = Dir["{config,db,models,script,views}/**/*"] + ["LICENSE", "Rakefile", "README.md", "pincode.rb", "config.ru", "Gemfile"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/abhinavs/pincode}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Sinatra based Rack middleware for Indian postcodes, inspired by Ben Schwarz's postie}


  s.add_runtime_dependency "sinatra"
  s.add_runtime_dependency "json"
  s.add_runtime_dependency "activerecord"
  s.add_runtime_dependency "sinatra-activerecord"
  s.add_runtime_dependency "rack-throttle"
end
