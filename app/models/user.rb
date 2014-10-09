class User < ActiveRecord::Base
  has_many :squeaks
  has_many :user_followings
  #has_many :user_followings, through: :user_followings, class_name: 'User' 
end