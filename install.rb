puts "**************************************************"
puts "Please add in your config/routes.rb"
puts "  match 'ckeditors/upload'=>'ckeditors#upload'"
puts "  match 'ckeditors/browser'=>'ckeditors#browser'"

dir_base = File.dirname(__FILE__)

FileUtils.cp_r("#{dir_base}/src/javascripts/ckeditor","public/javascripts/")
FileUtils.cp_r("#{dir_base}/src/controllers/ckeditors_controller.rb","app/controllers/")
