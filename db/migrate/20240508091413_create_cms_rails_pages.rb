class CreateCmsRailsPages < ActiveRecord::Migration[7.1]
  def change
    create_table :cms_rails_pages do |t|
      t.references :cms_rails_template, null: false, foreign_key: true
      t.references :cms_rails_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
