class HpostsController < ApplicationController
  before_action :set_hpost, only: [:show, :edit, :update, :destroy]

  def testkk
  end

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
    i = params[:id].to_i
    
    
    if i == 1
      @text_contents_count=10
      
      render :"/ubeg/form8(night_market)"
    elsif i==2
      @text_contents_count=5
      render :"/ubeg/form7(nightparty)"
    elsif i==3
      @text_contents_count=3
      render :"/ubeg/form11(hack)"
    elsif i==4
      @text_contents_count=2
      render :"/ubeg/form12(watermelon)"
    elsif i==5
    @text_contents_count=5
      render :"/ubeg/form4(blacksale)"
    elsif i==6
      @text_contents_count=4
      render :"/ubeg/form13(harder)"
    elsif i==7
      @text_contents_count=4
      render :"/ubeg/form9(pony)"
    elsif i==8
      @text_contents_count=4
      render :"/ubeg/form6(horror)"      
    elsif i==9
      @text_contents_count=6
      render :"/ubeg/_form"
      
      
    end
  end

  # GET /hposts/1/edit
  def edit
    @text_contents_count = count_em(@hpost.htmltag,"text_content")
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
      params.require(:hpost).permit(:htmltag, :picture1, :picture1_cache, :result)
    end
end
