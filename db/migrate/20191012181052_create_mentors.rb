class CreateMentors < ActiveRecord::Migration[5.0]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :user, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
