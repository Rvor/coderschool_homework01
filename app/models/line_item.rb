class LineItem < ActiveRecord::Base
  belongs_to :fooditem
  belongs_to :cart
end
