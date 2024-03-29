class TutorsController < ApplicationController
  before_action :set_tutor, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /tutors or /tutors.json
  def index
    @tutors = Tutor.all
  end

  # GET /tutors/1 or /tutors/1.json
  def show
      @meetings = Meeting.where(
        start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
      )
      puts(@meetings)

    @reviews = Review.where(tutor_id: @tutor.id).order("created_at DESC")
  end

  def avg_rating
    review.average(:rating)
  end 
  
  # GET /tutors/new
  def new
    @tutor = current_user.tutors.build
  end

  # GET /tutors/1/edit
  def edit
  end

  # POST /tutors or /tutors.json
  def create
    @tutor = current_user.tutors.build(tutor_params)

    respond_to do |format|
      if @tutor.save
        format.html { redirect_to tutor_url(@tutor), notice: "Tutor was successfully created." }
        format.json { render :show, status: :created, location: @tutor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutors/1 or /tutors/1.json
  def update
    respond_to do |format|
      if @tutor.update(tutor_params)
        format.html { redirect_to tutor_url(@tutor), notice: "Tutor was successfully updated." }
        format.json { render :show, status: :ok, location: @tutor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutors/1 or /tutors/1.json
  def destroy
    @tutor.destroy

    respond_to do |format|
      format.html { redirect_to tutors_url, notice: "Tutor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutor_params
      params.require(:tutor).permit(:first_name, :last_name, :email, :phone, :bio)
    end
end
