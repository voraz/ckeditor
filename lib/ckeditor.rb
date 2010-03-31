if defined?(Rails)
  ActionController::Base.send(:include, CkeditorHelper)
  ActionView::Base.send(:include, CkeditorHelper)
end
