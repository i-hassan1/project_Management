class AddClientsReference < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :client
  end
end
