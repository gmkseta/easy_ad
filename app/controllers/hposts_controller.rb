class HpostsController < ApplicationController
  before_action :set_hpost, only: [:show, :edit, :update, :destroy]

  # GET /hposts
  # GET /hposts.json
  def index
    @hposts = Hpost.all
  end

  # GET /hposts/1
  # GET /hposts/1.json
  def show
  end

  # GET /hposts/new
  def new
    @hpost = Hpost.new
    render :_form
  end

  # GET /hposts/1/edit
  def edit
    @text_contents_count = count_em(@hpost.htmltag, "text_content")
  end

  # POST /hposts
  # POST /hposts.json
  def create
    @hpost = Hpost.new(hpost_params)
    
    respond_to do |format|
      if @hpost.save
        # format.html { render(:text => "not implemented") }
        format.js
        # { redirect_to @hpost, notice: 'Hpost was successfully created.' }
        # format.json { render :show, status: :created, location: @hpost }
      else
       format.html { render :new }
        # format.json { render json: @hpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hposts/1
  # PATCH/PUT /hposts/1.json
  def update
    respond_to do |format|
      if @hpost.update(hpost_params)
       format.js
      # { redirect_to @hpost, notice: 'Hpost was successfully updated.' }
        # format.json { render :show, status: :ok, location: @hpost }
      else
       format.html { render :edit }
        # format.json { render json: @hpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hposts/1
  # DELETE /hposts/1.json
  def destroy
    @hpost.destroy
    respond_to do |format|
      format.html { redirect_to hposts_url, notice: 'Hpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def count_em(string, substring)
      string.scan(/(?=#{substring})/).count
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_hpost
      @hpost = Hpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hpost_params
      params.require(:hpost).permit(:htmltag, :picture, :picture_cache,:result)
    end
end
