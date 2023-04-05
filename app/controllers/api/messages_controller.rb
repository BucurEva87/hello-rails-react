class Api::MessagesController < ApplicationController
  def default_route
    @place = 'A house in New Orleans'
  end

  def random_greeting
    message = Message.order("RANDOM()").first
    render json: { greeting: message.content }
  end
end
