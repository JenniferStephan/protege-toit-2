class AddServicesToHebs < ActiveRecord::Migration[5.2]
  def change
    add_column :hebs, :services, :string
  end
end
