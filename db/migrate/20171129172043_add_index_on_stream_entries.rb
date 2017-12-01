class AddIndexOnStreamEntries < ActiveRecord::Migration[5.1]
  def change
    commit_db_transaction
    add_index :stream_entries, [:account_id, :activity_type, :id], algorithm: :concurrently
    remove_index :stream_entries, name: :index_stream_entries_on_account_id
  end
end