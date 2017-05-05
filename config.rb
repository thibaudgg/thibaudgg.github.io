activate :sprockets
set :relative_links, true

configure :development do
  activate :livereload
end

# Build-specific configuration
configure :build do
  activate :autoprefixer
  activate :relative_assets
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash
end
