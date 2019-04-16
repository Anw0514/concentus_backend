class Message < ApplicationRecord
  belongs_to :sender, foreign_key: "sender_id", class_name: "User"
  belongs_to :recipient, foreign_key: "recipient_id", class_name: "User"

  def message_serializer(bool)
    {
      id: self.id,
      sent: bool,
      subject: self.subject,
      content: self.content,
      created_at: self.created_at
    }
  end

end
