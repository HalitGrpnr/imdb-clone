class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :name
      t.string :surname
      t.string :bio

      t.timestamps null: false
    end
  end
end
