
class UsersController < ApplicationController
  def index
    #renders the index.html.erb view in the views/users
    render "users/all" #renders the all.html.erb view in the views/products folderfolder
  end
  def main
    render "home" #renders the home.html.erb view in the views/users folder
  end
  def list
    render text: "users/all" #renders the all.html.erb view in the views/products folder
  end
  def new
    #stuff here
  end
  # def show
  #   puts "Hello"
  # end
end