class MessagesController < ApplicationController
  def create
    @message = Message.new(params_message)

    if @message.save
      redirect_to root_path
    else
      render "pages/contact"
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def params_message
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
