class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notification_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    message = Message.create!(content: data['message'])
    ActionCable.server.broadcast('notification_channel', message: message)
    RailsGraphqlSchema.subscriptions.trigger(:message_added, {}, message)
  end
end
