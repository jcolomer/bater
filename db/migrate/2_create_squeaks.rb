class CreateSqueaks < ActiveRecord::Migration
  def change
    create_table :squeaks do |t|
      t.string :content
      t.integer :user_id

      t.timestamps

    end
  end
end