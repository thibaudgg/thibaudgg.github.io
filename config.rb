# Reload the browser automatically whenever files change
activate :livereload

activate :relative_assets
set :relative_links, true

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # https://github.com/follmann/middleman-favicon-maker
  activate :favicon_maker

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash
end
