class CreateUserFollowings < ActiveRecord::Migration
  def change
    create_table :user_followings do |t|
      t.integer :user_id
      t.integer :user_following_id

    end
  end
end