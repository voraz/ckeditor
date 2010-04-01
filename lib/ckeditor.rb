module Ckeditor

  def ckeditor_images_urls(str)
    reg = /\< *[img][^\>]*[src] *= *[\"\']{0,1}([^\"\'\ >]*)/i
    str.scan(reg).uniq.map{|r| r[0]}
  end
  def ckeditor_images_names(str)
    ckeditor_images_urls(str).map{ |r| r.split("/").last }
  end

end
if defined?(Rails)
  ActionController::Base.send(:include, CkeditorHelper)
  ActionView::Base.send(:include, CkeditorHelper)
end
include Ckeditor

