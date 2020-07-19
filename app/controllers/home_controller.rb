class HomeController < ApplicationController
  def top
    @talk_threads = TalkThread.all
  end
end
