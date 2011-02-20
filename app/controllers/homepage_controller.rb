class HomepageController < ApplicationController
  # GET /
  # GET /index.xml
  def index
    @users = User.all
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
end