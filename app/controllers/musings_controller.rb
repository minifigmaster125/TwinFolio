class MusingsController < ApplicationController
  include ApplicationHelper
  before_action :set_musing, only: [:show, :edit, :update, :destroy]

  # GET /musings
  # GET /musings.json
  def index
    if joraaver? 
      @musings = Musing.all_joraaver(params[:page])
    else 
      @musings = Musing.all_suchaaver(params[:page])
    end
  end

  # GET /musings/1
  # GET /musings/1.json
  def show
    set_musing
  end

  # GET /musings/new
  def new
    @musing = Musing.new
  end

  # GET /musings/1/edit
  def edit
  end

  # POST /musings
  # POST /musings.json
  def create
    @musing = Musing.new(musing_params)

    respond_to do |format|
      if @musing.save
        format.html { redirect_to @musing, notice: 'Musing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @musing }
      else
        format.html { render action: 'new' }
        format.json { render json: @musing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musings/1
  # PATCH/PUT /musings/1.json
  def update
    respond_to do |format|
      if @musing.update(musing_params)
        format.html { redirect_to @musing, notice: 'Musing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @musing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musings/1
  # DELETE /musings/1.json
  def destroy
    @musing.destroy
    respond_to do |format|
      format.html { redirect_to musings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musing
      @musing = Musing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musing_params
      params.require(:musing).permit(:title, :date, :post)
    end
end
