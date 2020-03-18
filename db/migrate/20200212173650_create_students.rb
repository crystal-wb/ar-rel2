class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :email
      t.string :class
      # t.type :column_name
    end
  end
end
