class AddMentorIdtoFeedbacks < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :mentor_id, :integer
    add_index  :feedbacks, :mentor_id
  end
end
