class CreateCmsRailsContents < ActiveRecord::Migration[7.1]
  def change
    create_table :cms_rails_contents do |t|
      t.string :Author
      t.string :Title
      t.string :Body
      t.string :Product
      t.string :Description
      t.string :Manufacturer
      t.string :Price
      t.references :cms_rails_page, null: false, foreign_key: true
      t.timestamps
    end
  end
end
