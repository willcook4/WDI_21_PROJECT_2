class RemoveOwnerIdAndLoaneeId < ActiveRecord::Migration[5.0]
  def change
    remove_column :things, :owner_id
    remove_column :things, :loanee_id
  end
end
