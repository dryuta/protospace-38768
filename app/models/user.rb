class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototype

  validates :name,       presence: true
  validates :profile,    presence: true
  validates :occupation, presence: true 
  validates :position,   presence: true
end
