class WelcomeController < ApplicationController
  def index
    @name = params[:name]
    @password = params[:password]

    if @name == 'white cat' && @password == 'white-cat'
      redirect_to :action => 'show'
    else
      @errorMsg = 'ログインしてください。'
    end
  end

  def show
    @username = params[:username]
    @message = params[:message]
  end
end
