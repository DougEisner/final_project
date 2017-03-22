class CtdDownloadsController < ApplicationController

  skip_before_action :verify_authenticity_token, :only => [:create, :index]

  def index
    @ctd_downloads = CtdDownload.search(params[:search])
  end

  def create
    @ctd_download = CtdDownload.new(product_params)
    @ctd_download.save
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:ctd_download).permit(:user_id, :download)
    end
end


Example
$("button").click(function(){
    $.post(url"/ctd_downloads",
    {
        ctd_downloads[user_id]: user_id
        ctd_downloads[download]: download
    },
    function(data, status){
        alert("Data: " + data + "\nStatus: " + status);
    });
});
