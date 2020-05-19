class UpdateCriticGame < ActiveRecord::Migration[6.0]
  def change
    add_column :critics, :title, :string

    add_reference :games, :company, foreign_key: true
  end
end
