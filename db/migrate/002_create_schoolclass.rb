class CreateSchoolclass < ActiveRecord::Migration[5.0]
  def change
    create_table :schoolclasses do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
