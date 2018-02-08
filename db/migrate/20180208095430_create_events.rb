class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :descriotion
      t.date :date
      t.string :time
      t.string :palce
      t.references :creator, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
