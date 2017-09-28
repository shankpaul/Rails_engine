class AbsentsController < ApplicationController
  bofore_filter :authenticate_module
  before_action :set_absent, only: [:show, :edit, :update, :destroy]

  # GET /absents
  def index
    @absents = Absent.all
  end

  # GET /absents/1
  def show
  end

  # GET /absents/new
  def new
    @absent = Absent.new
  end

  # GET /absents/1/edit
  def edit
  end

  # POST /absents
  def create
    @absent = Absent.new(absent_params)

    if @absent.save
      redirect_to @absent, notice: 'Absent was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /absents/1
  def update
    if @absent.update(absent_params)
      redirect_to @absent, notice: 'Absent was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /absents/1
  def destroy
    @absent.destroy
    redirect_to absents_url, notice: 'Absent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_absent
      @absent = Absent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def absent_params
      params.require(:absent).permit(:employee_id, :from, :to)
    end

    def authenticate_module
      
    end
end
