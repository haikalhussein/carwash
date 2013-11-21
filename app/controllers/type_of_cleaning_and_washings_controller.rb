class TypeOfCleaningAndWashingsController < ApplicationController
  # GET /type_of_cleaning_and_washings
  # GET /type_of_cleaning_and_washings.json
  def index
    @search = TypeOfCleaningAndWashing.ransack(params[:q])
    @type_of_cleaning_and_washings = @search.result
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.new
  end

  # GET /type_of_cleaning_and_washings/1
  # GET /type_of_cleaning_and_washings/1.json
  def show
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_of_cleaning_and_washing }
    end
  end

  # GET /type_of_cleaning_and_washings/new
  # GET /type_of_cleaning_and_washings/new.json
  def new
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_of_cleaning_and_washing }
    end
  end

  # GET /type_of_cleaning_and_washings/1/edit
  def edit
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.find(params[:id])
  end

  # POST /type_of_cleaning_and_washings
  # POST /type_of_cleaning_and_washings.json
  def create
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.new(params[:type_of_cleaning_and_washing])

    respond_to do |format|
      if @type_of_cleaning_and_washing.save
        format.html { redirect_to type_of_cleaning_and_washings_path, notice: 'Type of cleaning and washing was successfully created.' }
        format.json { render json: @type_of_cleaning_and_washing, status: :created, location: @type_of_cleaning_and_washing }
      else
        format.html { render action: "new" }
        format.json { render json: @type_of_cleaning_and_washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_of_cleaning_and_washings/1
  # PUT /type_of_cleaning_and_washings/1.json
  def update
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.find(params[:id])

    respond_to do |format|
      if @type_of_cleaning_and_washing.update_attributes(params[:type_of_cleaning_and_washing])
        format.html { redirect_to type_of_cleaning_and_washings_path, notice: 'Type of cleaning and washing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_of_cleaning_and_washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_cleaning_and_washings/1
  # DELETE /type_of_cleaning_and_washings/1.json
  def destroy
    @type_of_cleaning_and_washing = TypeOfCleaningAndWashing.find(params[:id])
    @type_of_cleaning_and_washing.destroy

    respond_to do |format|
      format.html { redirect_to type_of_cleaning_and_washings_url }
      format.json { head :no_content }
    end
  end
end
