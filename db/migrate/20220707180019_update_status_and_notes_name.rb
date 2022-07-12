class UpdateStatusAndNotesName < ActiveRecord::Migration[6.1]
  def change
    rename_column :jobs, :status_and_notes, :interview_round
  end
end
