class PostsController < ApplicationController
  def show
  end

  def new
    @post = Post.new
    @user = User.find_by(id:session[:user_id])
  end

  def create
    @post = Post.new(date:params[:date],
                     race:params[:race],
                     horse:params[:horse],
                     comment1:params[:comment1],
                     comment2:params[:comment2],
                     comment3:params[:comment3],
                     user_id:session[:user_id])
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/users/#{@post.user_id}/")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.date = params[:date]
    @post.race = params[:race]
    @post.horse = params[:horse]
    @post.comment1 = params[:comment1]
    @post.comment2 = params[:comment2]
    @post.comment3 = params[:comment3]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/users/#{@post.user_id}/")
    else
      render("posts/edit")
    end

  end

end
