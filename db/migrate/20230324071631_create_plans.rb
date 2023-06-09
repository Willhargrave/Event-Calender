class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
