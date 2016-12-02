class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :school, foreign_key: true
      t.integer :rollnumber
      t.string :name
      t.text :address
      t.string :phonenumber
      t.string :email


      t.timestamps
    end
  end
end
