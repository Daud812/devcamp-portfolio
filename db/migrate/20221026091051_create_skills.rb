class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :titel
      t.integer :percent_utilized

      t.timestamps
    end
  end
end
