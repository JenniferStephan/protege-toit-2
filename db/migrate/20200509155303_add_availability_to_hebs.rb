class AddAvailabilityToHebs < ActiveRecord::Migration[5.2]
  def change
    add_column :hebs, :availability, :boolean, default: true
  end
end
