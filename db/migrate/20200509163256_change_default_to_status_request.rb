class ChangeDefaultToStatusRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :hebs, :status_request
    add_column    :hebs, :status_request, :string, default: "en attente"
  end
end
