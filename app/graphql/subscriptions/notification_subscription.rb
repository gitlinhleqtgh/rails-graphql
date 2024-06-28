module Subscriptions
  class NotificationSubscription < BaseSubscription
    field :notification, Types::NotificationType, null: false
  end
end
