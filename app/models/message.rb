class Message < ApplicationRecord
  belongs_to :sender, foreign_key: "sender_id", class_name: "User"
  belongs_to :recipient, foreign_key: "recipient_id", class_name: "User"

  def message_serializer
    {
      sender_id: self.sender.id,
      recipient_id: self.recipient.id,
      subject: self.subject,
      content: self.content,
      date: self.created_at
    }
  end
end
