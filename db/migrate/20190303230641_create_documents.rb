class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :workspace_id
      t.string :doctext
      t.boolean :paid
      t.datetime :deadline

      t.timestamps
    end
  end
end
