class NewCallsController < ApplicationController
  before_action :set_new_call, only: %i[ show edit update destroy ]

  # GET /new_calls or /new_calls.json
  def index
    @new_calls = NewCall.all
  end

  # GET /new_calls/1 or /new_calls/1.json
  def show
  end

  # GET /new_calls/new
  def new
    @new_call = NewCall.new
  end

  # GET /new_calls/1/edit
  def edit
  end

  # POST /new_calls or /new_calls.json
  def create
    @new_call = NewCall.new(new_call_params)

    respond_to do |format|
      if @new_call.save
        format.html { redirect_to new_call_url(@new_call), notice: "New call was successfully created." }
        format.json { render :show, status: :created, location: @new_call }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_calls/1 or /new_calls/1.json
  def update
    respond_to do |format|
      if @new_call.update(new_call_params)
        format.html { redirect_to new_call_url(@new_call), notice: "New call was successfully updated." }
        format.json { render :show, status: :ok, location: @new_call }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_call.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_calls/1 or /new_calls/1.json
  def destroy
    @new_call.destroy

    respond_to do |format|
      format.html { redirect_to new_calls_url, notice: "New call was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_call
      @new_call = NewCall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_call_params
      params.require(:new_call).permit(:date, :local, :name, :request)
    end
end
