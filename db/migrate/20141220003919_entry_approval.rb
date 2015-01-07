class EntryApproval < ActiveRecord::Migration
  def change
  	add_column :account_entries, :state, :string
  	remove_column :account_entries, :sate, :string
  end
end
