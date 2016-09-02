class Item < ActiveRecord::Base
  has_one :item_buy
  has_one :item_request

  has_one :buyer, :through => :item_buy, :source => :user
  has_one :requester, :through => :item_request, :source => :user
end
