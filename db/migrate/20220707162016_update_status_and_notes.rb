class UpdateStatusAndNotes < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :status_and_notes, :boolean
  end
end
