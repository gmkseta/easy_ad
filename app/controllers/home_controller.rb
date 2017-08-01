class HomeController < ApplicationController
  def index
  end

  def edit1
  end

  def edit2
     @post = Post.find(params["id"]) #아이디값 받아오기
  end
  
  def write
    lion = Post.new
    lion.title = params["title"]
    lion.detail = params["detail"]
    lion.address = params["address"]
    lion.picture = params["picture"]
    lion.save
    redirect_to '/home/edit2/' + lion.id.to_s #따로 목록없음 걍 바로 보여주고 끝 (아이디값 이용)
  end

  def destroy
    lion = Post.where(id: params["id"]).first #all 말고 -1?로 해야
    lion.destroy
    redirect_to '/home/edit1'
  end
end
