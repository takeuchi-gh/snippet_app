class AddNameToLanguages < ActiveRecord::Migration[5.2]
  def change
    add_column :languages, :name, :string, null: false
  end
end
