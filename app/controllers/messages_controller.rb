class MessagesController < ApplicationController
  def create
    @new_message = Message.new(params_message)

    if @new_message.save
      redirect_to root_path
    else
      render contact_path
    end
  end

  private

  def params_message
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
