class CreateShowDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :show_details do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :movie_id
      t.integer :auditorium_id

      t.timestamps
    end
  end
end
