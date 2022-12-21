# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    User.create!(
      username: "jonathan1",
      password: "good_password"
    )
  end

  # it { should validate_length_of(:password).is_at_least(6) }
  it { should validate_presence_of(:username)}

end
