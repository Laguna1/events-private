class CreateVisitings < ActiveRecord::Migration[6.1]
  def change
    create_table :visitings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
