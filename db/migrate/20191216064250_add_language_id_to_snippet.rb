class AddLanguageIdToSnippet < ActiveRecord::Migration[5.2]
  def change
    add_reference :snippets, :language, foreign_key: true
  end
end
