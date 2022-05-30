class MessagesController < ApplicationController
    def create
        @message = Message.new(messages_params)
        @chatroom = Chatroom.find(params[:chatroom_id])
        @message.chatroom = @chatroom 
        @message.user = current_user

        if @message.save
            ChatroomChannel.broadcast_to(
                "#{@chatroom.id}",
                render_to_string(partial: "messages/message", locals: {message: @message})
            )
            head :ok
        else
            render "chatrooms/show"
        end
    end

    private 

    def messages_params
        params.require(:message).permit(:content)
    end
end
