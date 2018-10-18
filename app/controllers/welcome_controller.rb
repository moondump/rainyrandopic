class WelcomeController < ActionController::Base
  before_action :index, only: :set_session_img_id

  def index
    respond_to do |format|

      format.html {
        @base_url = request.protocol + request.host_with_port
        @image_id = session[:image_id]
        html = render_to_string(
          file: 'welcome/index.erb'
        )
        render body: html
      }
    end
  end

  private

  def set_session_img_id
    session[:image_id] = (Image.exists?(session[:image_id]) ? session[:image_id] : Image.create.id)
  end

end
