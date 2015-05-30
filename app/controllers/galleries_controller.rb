class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  def index
<<<<<<< HEAD
    respond_to do |format|
      format.json
    end
=======

>>>>>>> 14b71980cc4a76beb50936559ee8e81462417521
  end

  def show
    respond_to do |format|
      format.js
      format.html
<<<<<<< HEAD
      format.json
=======
>>>>>>> 14b71980cc4a76beb50936559ee8e81462417521
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end
end
