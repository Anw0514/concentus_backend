class BandMember < ApplicationRecord
  belongs_to :member, polymorphic: true
  belongs_to :band

  def member_serializer
    { id: self.id, role: self.role, member: self.member.member_serializer}
  end
end
