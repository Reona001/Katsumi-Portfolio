class RoomMessagesController < ApplicationController
  before_action :load_entities

def create

  @room_message = RoomMessage.create user: current_user,
                                     room: @room,
                                     message: params.dig(:room_message, :message)
                                     redirect_to room_path(@room, anchor: "message-#{@room_message.id}")
  RoomChannel.broadcast_to @room, @room_message

end

  protected

  def load_entities
    @room = Room.find params.dig(:room_message, :room_id)
  end
end
