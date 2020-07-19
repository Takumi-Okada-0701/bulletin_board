class ResponsesController < ApplicationController
    before_action :find_talk_thread, only: [:create]
    before_action :login_required, only: [:create]

    def create
        @response=current_user.responses.new(response_params)
        @response.talk_thread_id = @talk_thread.id
        if @response.save
            redirect_to @talk_thread, notice: "投稿が完了しました"
        else
            @responses = @talk_thread.responses
            render template: "talk_threads/show"
        end
    end

    private
     def response_params
        params.require(:response).permit(:content)
    end
end
