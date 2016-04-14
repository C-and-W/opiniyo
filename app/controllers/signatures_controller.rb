class SignaturesController < ApplicationController

  # GET /signatures
  # GET /signatures.json
  def index
    @signatures = Signature.all
  end

  # POST /signatures
  # POST /signatures.json
  def create
    @signature = Signature.new(signature_params)

    respond_to do |format|
      if @signature.save
        format.html { redirect_to posts_path(code: Code.first.code) }
      else
        format.html { render :new }
        format.json { render json: @signature.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def signature_params
      params.require(:signature).permit(:name, :age, :email, :petition_id)
    end
end
