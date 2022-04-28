class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :trip_id # Foreign Key
      t.timestamps
    end
  end
end