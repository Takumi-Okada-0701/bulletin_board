class TalkThreadsController < ApplicationController
  before_action :find_talk_thread, only: [:show]
  before_action :login_required, only: [:new, :create]

  def new
    @talk_thread = TalkThread.new
  end

  def create
    @talk_thread=current_user.talk_threads.new(talk_thread_params)
    if @talk_thread.save
      redirect_to root_path, notice: "スレッドを作成しました"
    else
      render :new
    end
  end

  def show
    @responses = @talk_thread.responses
    @response = Response.new
  end

  def search
    @word = params['word']
    @talk_threads = TalkThread.joins(:responses)
                    .where('title LIKE ? OR responses.content LIKE ?',"%#{@word}%","%#{@word}%")
                    .group(:id)
  end

  private

  def talk_thread_params
        params.require(:talk_thread).permit(:title, category_ids: [])
  end
end
