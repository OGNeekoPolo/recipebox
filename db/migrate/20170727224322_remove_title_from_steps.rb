class RemoveTitleFromSteps < ActiveRecord::Migration[5.1]
  def change
    remove_column :steps, :title, :string
  end
end
