class CategoryDataController < ApplicationController
  before_action :set_category_datum, only: %i[show edit update destroy]

  # GET /category_data or /category_data.json
  def index
    @category_data = CategoryDatum.all
  end

  # GET /category_data/1 or /category_data/1.json
  def show; end

  # GET /category_data/new
  def new
    @category_datum = CategoryDatum.new
  end

  # GET /category_data/1/edit
  def edit; end

  # POST /category_data or /category_data.json
  def create
    @category_datum = CategoryDatum.new(category_datum_params)

    respond_to do |format|
      if @category_datum.save
        format.html do
          redirect_to category_datum_url(@category_datum), notice: 'Category datum was successfully created.'
        end
        format.json { render :show, status: :created, location: @category_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_data/1 or /category_data/1.json
  def update
    respond_to do |format|
      if @category_datum.update(category_datum_params)
        format.html do
          redirect_to category_datum_url(@category_datum), notice: 'Category datum was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @category_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_data/1 or /category_data/1.json
  def destroy
    @category_datum.destroy

    respond_to do |format|
      format.html { redirect_to category_data_url, notice: 'Category datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category_datum
    @category_datum = CategoryDatum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_datum_params
    params.require(:category_datum).permit(:category_id, :data_id)
  end
end
