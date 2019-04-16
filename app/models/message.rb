class Message < ApplicationRecord
  belongs_to :sender, foreign_key: "sender_id", class_name: "User"
  belongs_to :recipient, foreign_key: "recipient_id", class_name: "User"

  def message_serializer
    {
      id: self.id,
      sender_id: self.sender.id,
      recipient_id: self.recipient.id,
      subject: self.subject,
      content: self.content,
      date: self.created_at,
      s_del: self.sender_deleted,
      r_del: self.recipient_deleted
    }
  end

  def self.multi_serializer_as_receiver(messages)
    msgs = {}
    messages.each do |msg|
      if msgs.key?(msg.sender.name)
        msgs[msg.sender.name] << msg.message_serializer
      else 
        msgs[msg.sender.name] = [msg.message_serializer]
      end
    end
    msgs
  end

  def self.multi_serializer_as_sender(messages)
    msgs = {}
    messages.each do |msg|
      if msgs.key?(msg.recipient.name)
        msgs[msg.recipient.name] << msg.message_serializer
      else 
        msgs[msg.recipient.name] = [msg.message_serializer]
      end
    end
    msgs
  end
end
