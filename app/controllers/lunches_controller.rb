class LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

  # GET /lunches
  # GET /lunches.json
  def index
    @lunches = Lunch.all
  end

  # GET /lunches/1
  # GET /lunches/1.json
  def show
  end

  # GET /lunches/new
  def new
    @lunch = Lunch.new
  end

  # GET /lunches/1/edit
  def edit
  end

  # POST /lunches
  # POST /lunches.json
  def create
    @lunch = Lunch.new(lunch_params)
    respond_to do |format|
      if @lunch.save
        @lunches = Lunch.all
        format.html { render :index, notice: 'Lunch was successfully updated.' }
        format.json { render :index, status: :ok }
      else
        format.html { render :new }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lunches/1
  # PATCH/PUT /lunches/1.json
  def update
    respond_to do |format|
      if @lunch.update(lunch_params)
        @lunches = Lunch.all
        format.html { render :index, notice: 'Lunch was successfully updated.' }
        format.json { render :index, status: :ok, location: @lunches }
      else
        format.html { render :edit }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunches/1
  # DELETE /lunches/1.json
  def destroy
    @lunch.destroy
    @lunches = Lunch.all
    respond_to do |format|
      format.html { render :index, notice: 'Lunch was successfully destroyed.' }
      format.json { render :index, status: :ok, location: @lunches }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lunch_params
      params.permit(:name, :location, :phone, :description)
    end
end
