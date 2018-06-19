class AddTitleToResumes < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :title, :string
  end
end
