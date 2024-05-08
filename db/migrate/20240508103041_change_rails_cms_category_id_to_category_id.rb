class ChangeRailsCmsCategoryIdToCategoryId < ActiveRecord::Migration[7.1]
  def change
    rename_column :cms_rails_templates, :cms_rails_category_id, :category_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
