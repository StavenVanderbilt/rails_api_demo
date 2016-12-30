class CreateGraduates < ActiveRecord::Migration[5.0]
  def change
    create_table :graduates do |t|
      t.string :name
      t.integer :age
      t.integer :score
      t.string :studentNumber

      t.timestamps
    end
  end
end
