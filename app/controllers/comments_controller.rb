class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.score = 0
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(request.referer, :notice => 'Response added.') }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
    
  end
end
