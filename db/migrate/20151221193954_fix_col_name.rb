class FixColName < ActiveRecord::Migration
  def change
    rename_column :menu_items, :type, :course
  end
end
