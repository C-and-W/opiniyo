class ReportsController < ApplicationController
  before_action :set_report, only: [:update, :destroy]


  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    tags = params['tags'].split(',')

    respond_to do |format|
      if @report.save
        tags.each do |tag|
          @tag = Tag.new(name: tag, report_id: @report.id)
          @tag.save
        end
        format.html { redirect_to posts_path(code: Code.first.code) }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    if params['btn-noted'] == 'true'
      @report.update(noted: true)
    else
      @report.update(noted: false)
    end
    redirect_to posts_path(code: Code.first.code)
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to posts_path(code: Code.first.code) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:write_up, :name, :age, :photo, :noted)
    end
end
