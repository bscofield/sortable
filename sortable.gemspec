# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sortable}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Scofield"]
  s.date = %q{2009-09-23}
  s.description = %q{Sortable provides a DSL for defining sort order on any Ruby object

To use it, you just call the sortable method and pass it a list of methods and/or blocks; when
you call sort on a collection of these objects, each method/block is evaluated in turn, and the 
first that provides a non-zero sort value is used.}
  s.email = ["ruby@turrean.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/sortable.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_sortable.rb"]
  s.homepage = %q{http://github.com/bscofield/sortable}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sortable-object}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Sortable provides a DSL for defining sort order on any Ruby object  To use it, you just call the sortable method and pass it a list of methods and/or blocks; when you call sort on a collection of these objects, each method/block is evaluated in turn, and the  first that provides a non-zero sort value is used.}
  s.test_files = ["test/test_helper.rb", "test/test_sortable.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
