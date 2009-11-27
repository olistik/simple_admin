# == Schema Information
#
# Table name: users
#
#  id                   :integer         not null, primary key
#  email                :string(100)     not null
#  encrypted_password   :string(40)      not null
#  password_salt        :string(20)      not null
#  confirmation_token   :string(20)
#  confirmed_at         :datetime
#  confirmation_sent_at :datetime
#  reset_password_token :string(20)
#  remember_token       :string(20)
#  remember_created_at  :datetime
#  created_at           :datetime
#  updated_at           :datetime
#

class User < ActiveRecord::Base
  devise :all
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  has_and_belongs_to_many :domains

  def to_label
    email
  end

end
