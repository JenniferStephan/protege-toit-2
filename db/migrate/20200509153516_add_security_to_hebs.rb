class AddSecurityToHebs < ActiveRecord::Migration[5.2]
  def change
    add_column :hebs, :security_features, :string
  end
end
