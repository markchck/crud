class HomeController < ApplicationController
  def index
	  @article = Article.all
  end

  def create
	  @article = Article.new
	  @article.title   = params[:title]
	  @article.author  = params[:author]
	  @article.content = params[:content]
	  @article.save
	  
	  redirect_to '/'
  end

  def update
	  @article = Article.find(params[:id])
	  @article.title   = params[:title]
	  @article.author  = params[:author]
	  @article.content = params[:content]
	  @article.save
	  redirect_to '/'		  
  end

  def delete
	  Article.find(params[:id]).destroy
	  redirect_to '/'
  end

  def create_form
  end

  def update_form
	  @article = Article.find(params[:id])
  end
	
  def reply_create
	  @reply = Reply.new
	  @reply.article_id = params[:article_id]
	  @reply.reply_content = params[:reply_content]
	  @reply.save
	  
	  redirect_to '/'
  end

	def reply_delete
		Reply.destroy(params[:reply_id])
		redirect_to '/'
	end
	
	def reply_update_form
		@reply = Reply.find(params[:reply_id])
	end
	
	def reply_update
		@reply = Reply.find(params[:reply_id])
		@reply.reply_content = params[:reply_content]
		@reply.save
		
		redirect_to '/'
	end
		
end




