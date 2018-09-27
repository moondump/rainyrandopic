class WelcomeController < ActionController::Base

  def index
    respond_to do |format|

      format.html { 
        session[:image_id] ||= SecureRandom.uuid
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
