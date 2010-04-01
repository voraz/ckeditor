module CkeditorHelper
  def ckeditor_url(url)
    "window.opener.CKEDITOR.tools.callFunction(#{params['CKEditorFuncNum']}, '#{url}');window.close();"
  end

  def on_upload(url)
    #@text = params[:CKEditor].blank? ? upload.to_json : %Q

    render :text=>"<script type='text/javascript'>
      window.parent.CKEDITOR.tools.callFunction(#{params[:CKEditorFuncNum]}, '#{url}');
    </script>"
  end

end

