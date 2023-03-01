class DownloaderController < ApplicationController
  skip_before_action :authenticate_user!

  def download
    filename = params[:filename]
    send_file "public/#{filename}.pdf", type: "application/pdf", x_sendfile: true
  end
end
