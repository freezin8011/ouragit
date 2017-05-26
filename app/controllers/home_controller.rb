require 'open-uri'
class HomeController < ApplicationController
  def lending
    @ranking = Ranking.all
  end
  
  

  def list
    @every_post = Post.order("id desc").page(params[:page]).per(10)
  end
  
  def new
    unless user_signed_in?
      redirect_to "/users/sign_in"
      flash[:error] = "You must be logged in to access this section"
    end
  end

  def create
    @title = params[:title]
    @content = params[:content]
    
     # 포스트란 데이터 베이스를 새로 만들자, 그리고 new_post 에 저장해놓자.
    new_post = Post.new
    
    # new_post에 타이틀은 @title 라고 해놓자
    new_post.title = @title
    
    new_post.content = @content
    new_post.save
    
    redirect_to "/home/list"
  end
  
  # 수정을 실제로 할 페이지
  def update_view
    @one_post = Post.find(params[:id])
  end
  
  # 수정하는 것을 새롭게 저장해주는 곳
  def real
    @one_post = Post.find(params[:id])
    # 여기부터는 create 랑 똑같다.
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/home/list"
  end
  
  # 삭제 기능
  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    redirect_to "/home/list"
  end
  
  
  def info
    @one_post = Post.find(params[:id])
  end
  

  
  
  
  
end
