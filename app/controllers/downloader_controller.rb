class DownloaderController < ApplicationController
  skip_before_action :authenticate_user!

  def download
    send_file 'public/CV-Diana-Spieser.pdf', type: "application/pdf", x_sendfile: true
  end
end
