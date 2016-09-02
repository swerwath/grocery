class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :item_buys
  has_many :item_requests

  has_many :bought_items, :through => :item_buys, :source => :item
  has_many :requested_items, :through => :item_requests, :source => :item

end
