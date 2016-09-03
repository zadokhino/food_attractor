class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true, length: {maximum: 50}
	validates :phone, presence: true, length: {minimum: 6, maximum: 15}
	validates :address, presence: true, length: {maximum: 50}
end
