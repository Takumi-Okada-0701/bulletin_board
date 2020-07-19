class ApplicationController < ActionController::Base
    def find_talk_thread
        begin
            @talk_thread = TalkThread.find(params[:id])
        rescue => exception
            render file: "#{Rails.root}/public/404.html", layout: false, status: 404
        end
    end

    def login_required
        unless user_signed_in?
            flash[:alert] = 'ログインしてください'
            redirect_to root_path
        end
    end
end
