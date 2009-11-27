# == Schema Information
#
# Table name: domains
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Domain < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :mailboxes

  def to_label
    name
  end

end
