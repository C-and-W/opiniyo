class PetitionSignaturesController < ApplicationController
  before_action :set_petition_signature, only: [:show, :edit, :update, :destroy]

  # GET /petition_signatures
  # GET /petition_signatures.json
  def index
    @petition_signatures = PetitionSignature.all
  end

  # GET /petition_signatures/1
  # GET /petition_signatures/1.json
  def show
  end

  # GET /petition_signatures/new
  def new
    @petition_signature = PetitionSignature.new
  end

  # GET /petition_signatures/1/edit
  def edit
  end

  # POST /petition_signatures
  # POST /petition_signatures.json
  def create
    @petition_signature = PetitionSignature.new(petition_signature_params)

    respond_to do |format|
      if @petition_signature.save
        format.html { redirect_to @petition_signature, notice: 'Petition signature was successfully created.' }
        format.json { render :show, status: :created, location: @petition_signature }
      else
        format.html { render :new }
        format.json { render json: @petition_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petition_signatures/1
  # PATCH/PUT /petition_signatures/1.json
  def update
    respond_to do |format|
      if @petition_signature.update(petition_signature_params)
        format.html { redirect_to @petition_signature, notice: 'Petition signature was successfully updated.' }
        format.json { render :show, status: :ok, location: @petition_signature }
      else
        format.html { render :edit }
        format.json { render json: @petition_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petition_signatures/1
  # DELETE /petition_signatures/1.json
  def destroy
    @petition_signature.destroy
    respond_to do |format|
      format.html { redirect_to petition_signatures_url, notice: 'Petition signature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petition_signature
      @petition_signature = PetitionSignature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petition_signature_params
      params.require(:petition_signature).permit(:name, :age, :email, :petition_id)
    end
end
