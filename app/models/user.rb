class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :bikes, dependent: :delete_all
  has_many :bookings, dependent: :delete_all
  has_many :owner_bookings, through: :bikes, source: :bookings
end
