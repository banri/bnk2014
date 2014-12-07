class AddColumnThemeNum < ActiveRecord::Migration
  def up
    add_column :comments, :theme_num, :integer
  end

  def down
    remove_column :comments, :theme_num, :integer
  end
end
