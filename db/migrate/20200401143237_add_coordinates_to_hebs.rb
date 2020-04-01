class AddCoordinatesToHebs < ActiveRecord::Migration[5.2]
  def change
    add_column :hebs, :latitude, :float
    add_column :hebs, :longitude, :float
  end
end
