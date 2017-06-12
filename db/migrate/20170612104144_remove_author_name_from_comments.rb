class RemoveAuthorNameFromComments < ActiveRecord::Migration[5.1]
  def change
  	remove_column :comments, :author_name
  end
end
