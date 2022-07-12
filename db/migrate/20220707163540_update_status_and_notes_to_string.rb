class UpdateStatusAndNotesToString < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :status_and_notes, :string
  end
end
