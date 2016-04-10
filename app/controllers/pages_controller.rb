class PagesController < ApplicationController

  def try
  end
  
  def index
    @message = session[:message]
    session[:message] = nil
  end

  def posts
    @header = "Reports"
    session[:code] = params[:code]
    if session[:code] == "pie"
      @posts = (Report.all + Petition.all).sort_by(&:created_at).reverse
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

  def newsboard
    @header = "Newsboard"
    @news = (Call.all + Survey.all + Announcement.all + Poll.all).sort_by(&:created_at)
    for_posts
    for_newsboard
  end

  def about
    @header = "About"
    @about = About.first
    for_posts
  end

  def about_edit
    about = About.first
    about.update(write_up: params['write_up'])
    redirect_to about_path
  end

  def for_posts
    @report = Report.new
    @petition = Petition.new
  end

  def for_newsboard
    @call = Call.new
    @survey = Survey.new
    @poll = Poll.new
    @announcement = Announcement.new
  end
end
