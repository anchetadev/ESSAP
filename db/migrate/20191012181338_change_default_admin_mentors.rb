class ChangeDefaultAdminMentors < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:mentors, :admin, false)
  end
end
