class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :place
      t.datetime :date

      t.timestamps
    end
  end
end
