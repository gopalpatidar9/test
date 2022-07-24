class Artical < ApplicationRecord
  validates :title, :presence => true ,:length => { :minimum => 6 }
  validates :discription, :presence => true , :length => { :minimum => 10 }
end