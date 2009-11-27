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

require 'test_helper'

class MailboxTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
