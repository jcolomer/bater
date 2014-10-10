require 'bcrypt'
class User < ActiveRecord::Base
  has_many :squeaks
  has_many :user_followings
  #has_many :user_followings, through: :user_followings, class_name: 'User'
	include BCrypt

  def who_is_following_me
    UserFollowing.where("user_following_id=?", self.id)
  end

  def who_i_am_following
    UserFollowing.where("user_id=?", self.id)
  end


  def squeaks_from_who_i_follow
    list_of_squeaks = []
    # who_is_following_me.each do |followee|
    # 	User.find(followee.user_id).squeaks.each do |squeak|
    # 		list_of_squeaks << squeak
    # 	end
    # end

    who_is_following_me.each do |follower|
    	User.find(follower.user_id).squeaks.each do |squeak|
    		list_of_squeaks << squeak.content
    	end
    end

    list_of_squeaks#.sort_by(&:create_at).reverse
  end


  def ids_of_who_is_following_me
  	who_is_following_me.map {|followee| followee.user_id}
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end


# User.squeaks.each {|squeak_object| p squeak_object.content}
