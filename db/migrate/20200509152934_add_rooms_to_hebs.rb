class AddRoomsToHebs < ActiveRecord::Migration[5.2]
  def change
    add_column :hebs, :rooms_available, :integer, default: 0
  end
end
