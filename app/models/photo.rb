class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :name, :score, :pic
  
  has_attached_file :pic,
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
        :url => "/system/:attachment/:id/:style/:filename"
end
