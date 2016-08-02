class VisitersController < ApplicationController
  before_action :set_visiter, only: [:show, :edit, :update, :destroy]

  # GET /visiters
  # GET /visiters.json
  def index
    @visiters = Visiter.all
  end

  # GET /visiters/1
  # GET /visiters/1.json
  def show
  end

  # GET /visiters/new
  def new
    @visiter = Visiter.new
  end

  # GET /visiters/1/edit
  def edit
  end

  # POST /visiters
  # POST /visiters.json
  def create
    @visiter = Visiter.new(visiter_params)

    respond_to do |format|
      if @visiter.save
        format.html { redirect_to @visiter, notice: 'Visiter was successfully created.' }
        format.json { render :show, status: :created, location: @visiter }
      else
        format.html { render :new }
        format.json { render json: @visiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visiters/1
  # PATCH/PUT /visiters/1.json
  def update
    respond_to do |format|
      if @visiter.update(visiter_params)
        format.html { redirect_to @visiter, notice: 'Visiter was successfully updated.' }
        format.json { render :show, status: :ok, location: @visiter }
      else
        format.html { render :edit }
        format.json { render json: @visiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiters/1
  # DELETE /visiters/1.json
  def destroy
    @visiter.destroy
    respond_to do |format|
      format.html { redirect_to visiters_url, notice: 'Visiter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visiter
      @visiter = Visiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visiter_params
      params.require(:visiter).permit(:name, :mob, :address, :message, :email)
    end
end
