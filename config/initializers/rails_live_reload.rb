RailsLiveReload.configure do |config|
  config.watch %r{app/assets/stylesheets/.+\.scss$}, reload: :always
  config.watch %r{.+\.rb$}, reload: :always
  config.watch %r{app/views/.+\.erb$}, reload: :always
end
