class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.string :seat_type
      t.string :row_name
      t.integer :auditorium_id
      t.integer :show_detail_id

      t.timestamps
    end
  end
end
