# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "knife-ec2"
  s.version = "0.6.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Jacob", "Seth Chisamore"]
  s.date = "2013-04-15"
  s.description = "EC2 Support for Chef's Knife Command"
  s.email = ["adam@opscode.com", "schisamo@opscode.com"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "LICENSE"]
  s.homepage = "http://wiki.opscode.com/display/chef"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "EC2 Support for Chef's Knife Command"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog>, ["~> 1.6"])
      s.add_runtime_dependency(%q<chef>, [">= 0.10.10"])
      s.add_development_dependency(%q<rspec-core>, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>, [">= 0"])
    else
      s.add_dependency(%q<fog>, ["~> 1.6"])
      s.add_dependency(%q<chef>, [">= 0.10.10"])
      s.add_dependency(%q<rspec-core>, [">= 0"])
      s.add_dependency(%q<rspec-expectations>, [">= 0"])
      s.add_dependency(%q<rspec-mocks>, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>, [">= 0"])
    end
  else
    s.add_dependency(%q<fog>, ["~> 1.6"])
    s.add_dependency(%q<chef>, [">= 0.10.10"])
    s.add_dependency(%q<rspec-core>, [">= 0"])
    s.add_dependency(%q<rspec-expectations>, [">= 0"])
    s.add_dependency(%q<rspec-mocks>, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>, [">= 0"])
  end
end
