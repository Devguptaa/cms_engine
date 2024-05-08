class CreateCmsRailsTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :cms_rails_templates do |t|
      t.string :name
      t.string :file_path
      t.references :cms_rails_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
