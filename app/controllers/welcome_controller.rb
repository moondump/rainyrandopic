class WelcomeController < ActionController::Base

  def index
    respond_to do |format|
      format.html {
        session[:image_id] = (Image.exists?(session[:image_id]) ? session[:image_id] : Image.create.id)
        @base_url = request.protocol + request.host_with_port
        @image_id = session[:image_id]
        html = render_to_string(
          file: 'welcome/index.erb'
        )
        render body: html
      }
    end
  end

end
