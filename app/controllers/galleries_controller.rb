class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  def index

  end

  def show
    respond_to do |format|
      format.js
      format.html
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end
end
