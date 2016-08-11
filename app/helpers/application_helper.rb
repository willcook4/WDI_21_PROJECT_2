module ApplicationHelper
  def unread_messages
    conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)

    conversations.map do |conversation|
      conversation.messages.where("user_id != ? AND read = ?", current_user.id, false).count
    end.reduce(:+)
  end
end