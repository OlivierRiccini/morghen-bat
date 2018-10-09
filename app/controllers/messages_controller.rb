class MessagesController < ApplicationController
  before_action :find_message, only: [ :show, :destroy ]
  skip_before_action :authenticate_user!, only: [ :create ]
  skip_after_action :verify_authorized, only: [ :create ]

  def show
    authorize @message
    @message.update(read: true)
  end

  def create
    @message = Message.new(params_message)

    if @message.save
      redirect_to root_path
    else
      render "pages/contact"
    end
  end

  def destroy
    authorize @message
    @message.destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def params_message
    params.require(:message).permit(:name, :email, :subject, :content, :type_de_travaux, corps_de_metier:[])
  end
end
