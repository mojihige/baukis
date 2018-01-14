class RenameSuspendColumnToAdministrators < ActiveRecord::Migration
  def change
    rename_column :administrators, :suspend, :suspended
  end
end
