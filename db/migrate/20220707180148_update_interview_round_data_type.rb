class UpdateInterviewRoundDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :interview_round, :string
  end
end
