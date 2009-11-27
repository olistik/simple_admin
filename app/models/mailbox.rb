# == Schema Information
#
# Table name: mailboxes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  capacity   :integer
#  domain_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mailbox < ActiveRecord::Base
  belongs_to :domain

  def to_label
    name
  end

end
