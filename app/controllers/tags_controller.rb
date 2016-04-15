class TagsController < ApplicationController
  before_action :set_tag, only: [:update]

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    @tag.update(votes: @tag.votes + 1)
    redirect_to newsboard_path(code: Code.first.code)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:name, :votes, :poll_id)
    end
end
