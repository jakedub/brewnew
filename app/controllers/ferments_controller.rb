class FermentsController < ApplicationController
  before_action :set_ferment, only: [:show, :edit, :update, :destroy]

  def index
    @ferments = Ferment.all
  end

  def show
  end

  def new
    @ferment = Ferment.new
  end

  def edit
  end

  def create
    @ferment = Ferment.new(ferment_params)

    respond_to do |format|
      if @ferment.save
        format.html { redirect_to @ferment, notice: 'Ferment was successfully created.' }
        format.json { render :show, status: :created, location: @ferment }
      else
        format.html { render :new }
        format.json { render json: @ferment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ferment.update(ferment_params)
        format.html { redirect_to @ferment, notice: 'Ferment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ferment }
      else
        format.html { render :edit }
        format.json { render json: @ferment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ferment.destroy
    respond_to do |format|
      format.html { redirect_to ferments_url, notice: 'Ferment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_ferment
      @ferment = Ferment.find(params[:id])
    end

    def ferment_params
      params.require(:ferment).permit(:ferments_type, :name, :weight, :item, :time_added)
    end
end
