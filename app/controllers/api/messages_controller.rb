class Api::MessagesController < ApplicationController
  def random_greeting
    message = Message.all.sample
    render json: { greeting: message.content }
  end
end
