class AddMentorIdtoUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :mentor, index: true, foreign_key: true
  end
end
