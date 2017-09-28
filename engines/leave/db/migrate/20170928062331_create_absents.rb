class CreateAbsents < ActiveRecord::Migration[5.0]
  def change
    create_table :absents do |t|
      t.integer :employee_id
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
