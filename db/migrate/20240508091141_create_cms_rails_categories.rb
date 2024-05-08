class CreateCmsRailsCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :cms_rails_categories do |t|
      t.string :name
      t.json :row_att  # Using json type instead of array

      t.timestamps
    end
  end
end
