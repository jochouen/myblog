class WelcomeController < ApplicationController
  def login
    @name = params[:name]
    @password = params[:password]

    if @name == 'white cat' && @password == 'white-cat'
      redirect_to :action => 'show'
    else
      flash[:error] = 'ログインしてください'
      redirect_to :action => 'index'
    end
  end

  def show
    @messages = BulletinBoard.all
    p @messages
  end

  def create
    if BulletinBoard.create(:username => user_param, :message => message_param)
      redirect_to :action => 'show'
    else
      flash[:error] = '投稿失敗しました。'
      redirect_to :action => 'show'
    end
  end

  private
      def user_param
        params.require(:username)
      end

      def message_param
        params.require(:message)
      end


end
