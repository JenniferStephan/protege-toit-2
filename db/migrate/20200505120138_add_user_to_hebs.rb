class AddUserToHebs < ActiveRecord::Migration[5.2]
  def change
    add_reference :hebs, :user, foreign_key: true
  end
end
