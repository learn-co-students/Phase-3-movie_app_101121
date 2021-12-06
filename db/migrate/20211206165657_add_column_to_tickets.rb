class AddColumnToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :movie_id, :integer
  end
end
