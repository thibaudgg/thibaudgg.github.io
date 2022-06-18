set :relative_links, true

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets
  activate :asset_hash
end
