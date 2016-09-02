class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :item_buys
  has_many :item_requests

  has_many :bought_items, :through => :item_buys, :source => :item
  has_many :requested_items, :through => :item_requests, :source => :item

  has_many :debts, :foreign_key => 'debtor_id', :class_name => 'Debt'
  has_many :credits, :foreign_key => 'creditor_id', :class_name => 'Debt'

end
