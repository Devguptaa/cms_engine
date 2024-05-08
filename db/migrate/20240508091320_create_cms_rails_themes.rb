class CreateCmsRailsThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :cms_rails_themes do |t|
      t.string :name
      t.string :file_path

      t.timestamps
    end
  end
end
