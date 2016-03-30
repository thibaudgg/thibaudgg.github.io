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
  activate :favicon_maker, icons: {
    '_favicon_template.png' => [
      { icon: 'apple-touch-icon-152x152-precomposed.png' },         # Same as apple-touch-icon-57x57.png, for retina iPad with iOS7.
      { icon: 'apple-touch-icon-144x144-precomposed.png' },         # Same as apple-touch-icon-57x57.png, for retina iPad with iOS6 or prior.
      { icon: 'apple-touch-icon-120x120-precomposed.png' },         # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS7.
      { icon: 'apple-touch-icon-114x114-precomposed.png' },         # Same as apple-touch-icon-57x57.png, for retina iPhone with iOS6 or prior.
      { icon: 'apple-touch-icon-76x76-precomposed.png' },           # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS7.
      { icon: 'apple-touch-icon-72x72-precomposed.png' },           # Same as apple-touch-icon-57x57.png, for non-retina iPad with iOS6 or prior.
      { icon: 'apple-touch-icon-60x60-precomposed.png' },           # Same as apple-touch-icon-57x57.png, for non-retina iPhone with iOS7.
      { icon: 'apple-touch-icon-57x57-precomposed.png' },           # iPhone and iPad users can turn web pages into icons on their home screen. Such link appears as a regular iOS native application. When this happens, the device looks for a specific picture. The 57x57 resolution is convenient for non-retina iPhone with iOS6 or prior. Learn more in Apple docs.
      { icon: 'apple-touch-icon-precomposed.png', size: '57x57' },  # Same as apple-touch-icon.png, expect that is already have rounded corners (but neither drop shadow nor gloss effect).
      { icon: 'apple-touch-icon.png', size: '57x57' },              # Same as apple-touch-icon-57x57.png, for "default" requests, as some devices may look for this specific file. This picture may save some 404 errors in your HTTP logs. See Apple docs
      { icon: 'favicon-196x196.png' },                              # For Android Chrome M31+.
      { icon: 'favicon-160x160.png' },                              # For Opera Speed Dial (up to Opera 12; this icon is deprecated starting from Opera 15), although the optimal icon is not square but rather 256x160. If Opera is a major platform for you, you should create this icon yourself.
      { icon: 'favicon-96x96.png' },                                # For Google TV.
      { icon: 'favicon-32x32.png' },                                # For Safari on Mac OS.
      { icon: 'favicon-16x16.png' },                                # The classic favicon, displayed in the tabs.
      { icon: 'favicon.png', size: '16x16' },                       # The classic favicon, displayed in the tabs.
      { icon: 'favicon.ico', size: '64x64,32x32,24x24,16x16' },     # Used by IE, and also by some other browsers if we are not careful.
    ]
  }

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash
end
