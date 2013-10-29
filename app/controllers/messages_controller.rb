class MessagesController < ApplicationController
  def create
    @message = Message.new message_params
    MessageMailer.contact_message(@message).deliver if @message.valid?
  end

  private

  def message_params
    params.require(:message).permit(:name, :organisation, :email_address, :phone_number, :project_name, :budget, :deadlines, :description)
  end
end
