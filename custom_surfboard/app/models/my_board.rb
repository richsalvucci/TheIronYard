class MyBoard < ActiveRecord::Base
  belongs_to :customer
  belongs_to :surfboard
end
