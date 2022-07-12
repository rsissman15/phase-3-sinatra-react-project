class UpdateInterviewRoundDataTypeBackToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :jobs, :interview_round, :integer
  end
end
