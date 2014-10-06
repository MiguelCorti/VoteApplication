class CreateNominees < ActiveRecord::Migration
  def change
    create_table :nominees do |t|
      t.string :photo
      t.string :name
      t.integer :number
      t.integer :votes

      t.timestamps
    end
  end
end
