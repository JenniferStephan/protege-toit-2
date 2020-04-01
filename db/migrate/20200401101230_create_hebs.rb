class CreateHebs < ActiveRecord::Migration[5.2]
  def change
    create_table :hebs do |t|
      t.string :name
      t.string :address
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
