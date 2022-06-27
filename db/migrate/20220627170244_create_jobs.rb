class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :position
      t.text :description
      t.string :status_and_notes
      t.integer :company_id
    end
  end
end
