class CreateSnippets < ActiveRecord::Migration[5.2]
  def change
    create_table :snippets do |t|
      t.string   :title, null: false
      t.text     :code,  null: false
      t.text     :comment
      t.timestamps
    end
  end
end
