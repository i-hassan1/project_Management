class AddClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end