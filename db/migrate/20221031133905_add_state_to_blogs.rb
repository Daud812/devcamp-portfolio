class AddStateToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :state, :integer  , default: 2
  end
end
