class BlogsController < ApplicationController
  def index
    counter = 0
    counter = counter + 1
    @current_user= 1
    session[:user_id] = @current_user
    newblogs = Blog.find(session[:user_id]).name
    render :text => "<ul>Welcome to Blog: #{newblogs} #{counter}</ul>".html_safe

  end

  def new
  end

  def show
      # {"id"=>"3"}
      render json: Blog.find({id})
  end

  def edit
  end
end
