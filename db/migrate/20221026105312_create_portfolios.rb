class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :titel
      t.string :subtitel
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
