Redmine::Plugin.register :redmine_nomnoml_macro do
  require 'nomnoml_macro_hook'

  name 'Redmine Nomnoml Macro plugin'
  author 'Grzegorz Makarewicz'
  description 'Add nomnoml graphs to your wiki.'
  version '0.0.1'
  url 'https://github.com/m32/redmine_nomnoml_macro'

end
