Gem::Specification.new do |s|
  s.name = %q{pretty_activerecord}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jack Chen", "Dr Nic Williams"]
  s.date = %q{2008-10-28}
  s.description = %q{Makes printing ActiveRecord objects pretty (via #inspect method).}
  s.email = ["chendo@chendo.net", "drnicwilliams@gmail.com"]
  s.files = ["test/test_helper.rb", "test/test_pretty_activerecord.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/chendo/pretty_activerecord}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pretty_activerecord}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Makes printing ActiveRecord objects pretty (via #inspect method).}
  s.test_files = ["test/test_helper.rb", "test/test_pretty_activerecord.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.0.1"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<newgem>, [">= 1.0.1"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.0.1"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
