class AddFilePdFtoScenarios < ActiveRecord::Migration[5.2]
  def change
    add_column :scenarios, :pdf_file, :string
  end
end
