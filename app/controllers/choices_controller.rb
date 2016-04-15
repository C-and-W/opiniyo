class ChoicesController < ApplicationController
  before_action :set_choice, only: [:update]

  # PATCH/PUT /choices/1
  # PATCH/PUT /choices/1.json
  def update
    @choice.update(votes: @choice.votes + 1)
    redirect_to newsboard_path(code: Code.first.code)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice
      @choice = Choice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choice_params
      params.require(:choice).permit(:name, :votes, :poll_id)
    end
end
