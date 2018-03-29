class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end

end