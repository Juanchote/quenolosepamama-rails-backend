class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :set_galleries, only: [:show]
  
  # GET /pages
  # GET /pages.json
  def index
    @page = Page.all


    respond_to do |format|
      format.json { render json: @page }
    end


  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    respond_to do |format|
      format.js

      #format.html
      format.json

      format.html

    end
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /page/1/edit
  def edit
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save

        #format.html { redirect_to @page, notice: 'Page was successfully created.' }

      else
        #format.html { render :new }


        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }


      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(menu_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    def set_galleries
      @galleries = @page.galleries
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params[:page]
    end
end
