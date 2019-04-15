class MessagesController < ApplicationController
    
    def create
        @message = Message.create(message_params)
    end

    def update

    end

    private

    def message_params
        params.require(:m).permit(:sender_id, :recipient_id, :sender_deleted, :recipient_deleted, :content, :subject)
    end

    def find_message
        @message = Message.find(params[:id])
    end
end
