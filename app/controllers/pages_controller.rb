class PagesController < ApplicationController
  def index
    @message = session[:message]
    session[:message] = nil
  end

  def posts
    if params['code'] == "pie"
      @posts = (Report.all + Petition.all).sort_by(&:created_at)
      if params['query'].present?
        @posts = Report.joins(:tags).merge(Tag.where("lower(tags.name) LIKE lower(?)", "%#{params['query']}%"))
      end
      if params['sort'].present?
        if params['sort'] == "reports"
          @posts = Report.all
        elsif params['sort'] == 'petitions'
          @posts = Petition.all
        else
        end
      end
      for_posts
      render :posts
    else
      session[:message] = "Wrong"
      redirect_to root_path
    end
  end

  def for_posts
    @report = Report.new
    @petition = Petition.new
  end
end
