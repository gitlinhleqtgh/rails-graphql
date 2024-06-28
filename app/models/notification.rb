class Notification < ApplicationRecord
  after_create :trigger_comment_posted_event

  private

  def trigger_comment_posted_event
    ApplicationSubscription.trigger("notification", {}, { notification: self })
  end
end
