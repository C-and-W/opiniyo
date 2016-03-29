class PagesController < ApplicationController
  def index
    @message = session[:message]
    session[:message] = nil
  end

  def posts
    if params['code'] == "pie"
      @posts = Report.all + Petition.all
      @posts.sort_by(&:created_at)
      @report = Report.new
      @petition = Petition.new
      render :posts
    else
      session[:message] = "Wrong"
      redirect_to root_path
    end
  end
end
