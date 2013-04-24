class Share < ActiveRecord::Base
  attr_accessible :Content, :user_id
  belongs_to :user
  validates_presence_of :Content
end