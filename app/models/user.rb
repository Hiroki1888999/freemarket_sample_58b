class User < ApplicationRecord
  has_many :comments
  has_many :items
  has_many :transaction_partners
  has_one :sns_credentials , dependent: :destroy
  has_one :credit_card , dependent: :destroy
  has_one :profile
  has_one :address , dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, format: { with: /\A(?=.?[a-z])(?=.?\d)[a-z\d]{7,128}+\z/ }
 end
 