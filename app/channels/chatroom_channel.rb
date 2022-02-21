class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom

    # Slacker tutorial
    room = Room.find params[:room]
    stream_for room
    # or
    # stream_from "room_#{params[:room]}"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
