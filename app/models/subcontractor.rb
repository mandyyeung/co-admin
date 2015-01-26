class Subcontractor < ActiveRecord::Base
  belongs_to :user
  has_many :change_orders
end
