class UserfirstNamesController < ApplicationController
  before_action :set_userfirst_name, only: [:show, :edit, :update, :destroy]

  # GET /userfirst_names
  # GET /userfirst_names.json
  def index
    @userfirst_names = UserfirstName.all
  end

  # GET /userfirst_names/1
  # GET /userfirst_names/1.json
  def show
  end

  # GET /userfirst_names/new
  def new
    @userfirst_name = UserfirstName.new
  end

  # GET /userfirst_names/1/edit
  def edit
  end

  # POST /userfirst_names
  # POST /userfirst_names.json
  def create
    @userfirst_name = UserfirstName.new(userfirst_name_params)

    respond_to do |format|
      if @userfirst_name.save
        format.html { redirect_to @userfirst_name, notice: 'Userfirst name was successfully created.' }
        format.json { render :show, status: :created, location: @userfirst_name }
      else
        format.html { render :new }
        format.json { render json: @userfirst_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userfirst_names/1
  # PATCH/PUT /userfirst_names/1.json
  def update
    respond_to do |format|
      if @userfirst_name.update(userfirst_name_params)
        format.html { redirect_to @userfirst_name, notice: 'Userfirst name was successfully updated.' }
        format.json { render :show, status: :ok, location: @userfirst_name }
      else
        format.html { render :edit }
        format.json { render json: @userfirst_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userfirst_names/1
  # DELETE /userfirst_names/1.json
  def destroy
    @userfirst_name.destroy
    respond_to do |format|
      format.html { redirect_to userfirst_names_url, notice: 'Userfirst name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userfirst_name
      @userfirst_name = UserfirstName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userfirst_name_params
      params.require(:userfirst_name).permit(:last_name)
    end
end
