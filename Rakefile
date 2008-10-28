%w[rubygems rake rake/clean fileutils hoe newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/pretty_activerecord'

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.new('pretty_activerecord', PrettyActiveRecord::VERSION) do |p|
  p.developer('Jack Chen', 'chendo@chendo.net')
  p.developer('Dr Nic Williams', 'drnicwilliams@gmail.com')
  p.changes              = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  p.rubyforge_name       = p.name # TODO this is default value
  p.extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"]
  ]
  
  p.spec_extras['rdoc_options'] = ['--main', Dir['README*'].first] # hopefully fixed in future hoe > 1.8
  p.clean_globs |= %w[**/.DS_Store tmp *.log]
  path = (p.rubyforge_name == p.name) ? p.rubyforge_name : "\#{p.rubyforge_name}/\#{p.name}"
  p.remote_rdoc_dir = File.join(path.gsub(/^#{p.rubyforge_name}\/?/,''), 'rdoc')
  p.rsync_args = '-av --delete --ignore-errors'
end

require 'newgem/tasks' # load /tasks/*.rake

